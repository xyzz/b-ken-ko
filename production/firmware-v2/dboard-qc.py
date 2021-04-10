import sys

if sys.platform.startswith("linux"):
    import hidraw as hid
else:
    import hid


MSG_LEN = 32

counter = 0

def hid_send(dev, msg, retries=1):
    if len(msg) > MSG_LEN:
        raise RuntimeError("message must be less than 32 bytes")
    msg += b"\x00" * (MSG_LEN - len(msg))

    data = b""

    global counter
    counter += 1

    while retries > 0:
        # add 00 at start for hidapi report id
        if dev.write(b"\x00" + msg) != MSG_LEN + 1:
            retries -= 1
            print("RETRY2 {} after {}".format(retries, counter))
            continue

        data = bytes(dev.read(MSG_LEN, timeout_ms=500))
        if not data:
            retries -= 1
            print("RETRY {} after {}".format(retries, counter))
            continue
        break

    if not data:
        raise RuntimeError("failed to communicate with the device")
    return data


def open_dev():
    for desc in hid.enumerate():
        if desc["vendor_id"] == 0x16d0 and desc["product_id"] == 0x106d and desc["interface_number"] == 1:
            dev = hid.device()
            dev.open_path(desc["path"])
            return dev


def main():
    dev = open_dev()
    if dev is None:
        print("no device?")
        return

    try:
        for x in range(3000):
            data = hid_send(dev, b"\x12\x00\x00\x1c")
            if data != b'\x12\x00\x00\x1c\x00)\x00\x1e\x00\x1f\x00 \x00!\x00"\x00#\x00$\x00%\x00&\x00\'\x00-\x00.\x005':
                raise RuntimeError('qc fail')
            if counter % 1000 == 0:
                print(counter)
    finally:
        dev.close()

    print("\n\nQC PASS")


if __name__ == "__main__":
    main()
