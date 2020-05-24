"""
    !!! --- sha256 message expansion --- !!!
    format:
        string

    operations:

    type:
        hexadecimals
    size:
        data size
        default: 32 bit
"""

import hex_bitwise_operation as shift_reg


def slice_header(header=""):
    valid = len(header) % 8 == 0

    # slice into msg of 8 hex
    if valid:
        msgs = []
        for i in range(0, 160, 8):
            tmp_str = ""
            for j in range(8):
                tmp_str += header[i + j]
            # print(tmp_str)
            msgs.append(tmp_str)
        # print(msgs)
        return msgs
    else:
        print("header size wrong!!! multiple of 8!")
        return None


def triple_xor(a, b, c):
    return a ^ b ^ c


def jumble_0(msg):
    sz = 32
    rotr7 = int(shift_reg.rotate_right(msg, bit=7, size=sz), 16)
    rotr18 = int(shift_reg.rotate_right(msg, bit=18, size=sz), 16)
    shfr3 = int(shift_reg.shift_right(msg, bit=3, size=sz), 16)
    # print(rotr7, rotr18, shfr3)

    return hex(triple_xor(rotr7, rotr18, shfr3))


def jumble_1(msg):
    sz = 32
    rotr17 = int(shift_reg.rotate_right(msg, bit=17, size=sz), 16)
    rotr19 = int(shift_reg.rotate_right(msg, bit=19, size=sz), 16)
    shfr10 = int(shift_reg.shift_right(msg, bit=10, size=sz), 16)
    # print(rotr17, rotr19, shfr10)

    return hex(triple_xor(rotr17, rotr19, shfr10))


def hashing(msgs, idx):
    if 0 <= idx < 16:
        return msgs[idx]
    elif 16 <= idx < len(msgs) + 2:
        j1 = int(jumble_1(msgs[idx - 2]), 16)
        w7 = int(msgs[idx - 7], 16)
        j0 = int(jumble_0(msgs[idx - 15]), 16)
        w16 = int(msgs[idx - 16], 16)
        result = hex(j1 + w7 + j0 + w16)
        result = result[2:]

        # print(j1, w7, j0, w16, result)

        # exceeded int32 value, restart count
        if len(result) > 8:
            max_hex = int("ffffffff", 16)
            result = int(result, 16) - max_hex
            print(result)
            result = hex(result)
            print(result)

        result = result[2:]

        # make sure its 8 hex
        result = shift_reg.check_size(result, 8)

        return result
    else:
        print("invalid range!!! 0 - 64 only!!!")
        return None

def step_ops(header):
    msgs = slice_header(header)
    # print(len(msgs))

    new_msgs = []
    for i in range(len(msgs)):
        tmp = hashing(msgs, i)
        if tmp != None:
            new_msgs.append(tmp)
    #         print("\nnew element:", tmp)
    #         print("new_msgs:", new_msgs, "\n")
    #
    # print("all hashing completed")
    return new_msgs
