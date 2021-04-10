#!/usr/bin/env python3

import sys
import os
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QVBoxLayout, QHBoxLayout, QPushButton
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import pyqtSlot
from PyQt5.Qt import Qt

if sys.platform.startswith("linux"):
    import hidraw as hid
else:
    import hid

## configurable options

NAME = "xyz60"
KEYMAP = [
    ["ESC", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "`", "BS"],
    ["F12", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]", "\\"],
    ["F1", "A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'", "ENTER"],
    ["F2", "Z", "X", "C", "V", "B", "N", "M", ",", ".", "/", "F3", "F4"],
    ["F5", "F6", "F7", " ", "F8", "F9", "F10", "F11"],
]
QC_VID = 0x5143
QC_PID = 0x4657
FIRMWARE = "xyz60_via.vfw"

## end of configurable options

mapping = {
    Qt.Key_Escape: "ESC",
    Qt.Key_Backspace: "BS",
    Qt.Key_Return: "ENTER",
    Qt.Key_BracketLeft: "[",
    Qt.Key_BracketRight: "]",
    Qt.Key_Backslash: "\\",
    Qt.Key_Slash: "/",
    Qt.Key_Comma: ",",
    Qt.Key_Period: ".",
    Qt.Key_Minus: "-",
    Qt.Key_Equal: "=",
    Qt.Key_Semicolon: ";",
    Qt.Key_Space: " ",
    Qt.Key_Apostrophe: "'",
    Qt.Key_QuoteLeft: "`",

    Qt.Key_A: "A",
    Qt.Key_B: "B",
    Qt.Key_C: "C",
    Qt.Key_D: "D",
    Qt.Key_E: "E",
    Qt.Key_F: "F",
    Qt.Key_G: "G",
    Qt.Key_H: "H",
    Qt.Key_I: "I",
    Qt.Key_J: "J",
    Qt.Key_K: "K",
    Qt.Key_L: "L",
    Qt.Key_M: "M",
    Qt.Key_N: "N",
    Qt.Key_O: "O",
    Qt.Key_P: "P",
    Qt.Key_Q: "Q",
    Qt.Key_R: "R",
    Qt.Key_S: "S",
    Qt.Key_T: "T",
    Qt.Key_U: "U",
    Qt.Key_V: "V",
    Qt.Key_W: "W",
    Qt.Key_X: "X",
    Qt.Key_Y: "Y",
    Qt.Key_Z: "Z",
    Qt.Key_0: "0",
    Qt.Key_1: "1",
    Qt.Key_2: "2",
    Qt.Key_3: "3",
    Qt.Key_4: "4",
    Qt.Key_5: "5",
    Qt.Key_6: "6",
    Qt.Key_7: "7",
    Qt.Key_8: "8",
    Qt.Key_9: "9",
    Qt.Key_F1: "F1",
    Qt.Key_F2: "F2",
    Qt.Key_F3: "F3",
    Qt.Key_F4: "F4",
    Qt.Key_F5: "F5",
    Qt.Key_F6: "F6",
    Qt.Key_F7: "F7",
    Qt.Key_F8: "F8",
    Qt.Key_F9: "F9",
    Qt.Key_F10: "F10",
    Qt.Key_F11: "F11",
    Qt.Key_F12: "F12",
}

MSG_LEN = 32

def hid_send(dev, msg, retries=1):
    if len(msg) > MSG_LEN:
        raise RuntimeError("message must be less than 32 bytes")
    msg += b"\x00" * (MSG_LEN - len(msg))

    data = b""
    first = True

    while retries > 0:
        retries -= 1
        if not first:
            time.sleep(0.5)
        first = False
        try:
            # add 00 at start for hidapi report id
            if dev.write(b"\x00" + msg) != MSG_LEN + 1:
                continue

            data = bytes(dev.read(MSG_LEN, timeout_ms=500))
            if not data:
                continue
        except OSError:
            continue
        break

    if not data:
        raise RuntimeError("failed to communicate with the device")
    return data


def find_device():
    for desc in hid.enumerate():
        if desc["vendor_id"] == QC_VID and desc["product_id"] == QC_PID and desc["interface_number"] == 1:
            return desc
    return None


class MainWindow(QWidget):
    def __init__(self):
        super().__init__()

        self.grabKeyboard()

        self.widgets = []
        self.active = []

        layout = QVBoxLayout()
        btn_clear = QPushButton("Clear")
        btn_clear.clicked.connect(self.reset)
        layout.addWidget(btn_clear)
        for row in KEYMAP:
            layout_row = QHBoxLayout()
            self.widgets.append([])
            self.active.append([])
            for item in row:
                lbl = QLabel(item)
                lbl.setFixedWidth(50)
                lbl.setFixedHeight(50)
                lbl.setAlignment(Qt.AlignCenter)
                self.widgets[-1].append(lbl)
                self.active[-1].append(False)
                layout_row.addWidget(lbl)
            layout_row.addStretch()
            layout.addLayout(layout_row)
        self.btn_flash = QPushButton("FLASH")
        self.btn_flash.clicked.connect(self.flash)
        layout.addWidget(self.btn_flash)
        layout.addStretch()

        self.setLayout(layout)
        self.setWindowTitle(NAME)

        self.update_map()

    def update_map(self):
        enable_flash = True
        for i, row in enumerate(self.widgets):
            for j, w in enumerate(row):
                if self.active[i][j]:
                    w.setStyleSheet("background-color: green; color: white")
                else:
                    w.setStyleSheet("background-color: red; color: white; font-weight: bold;")
                    enable_flash = False
        self.btn_flash.setEnabled(enable_flash)

    def keyPressEvent(self, event):
        event.accept()
        if event.key() not in mapping:
            return

        chara = mapping[event.key()]
        for i, row in enumerate(KEYMAP):
            for j, item in enumerate(row):
                if item == chara:
                    self.active[i][j] = True

        self.update_map()

    def reset(self):
        for row in self.active:
            for x in range(len(row)):
                row[x] = False
        self.update_map()

    def flash(self):
        desc = find_device()
        dev = hid.device()
        dev.open_path(desc["path"])
        hid_send(dev, b"\x0B", retries=20)
        os.system("vibl-flash {}".format(FIRMWARE))


def main():
    app = QApplication(sys.argv)

    window = MainWindow()
    window.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
