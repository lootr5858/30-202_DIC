"""
    !!! --- shift & rotate hexadecimals --- !!!
    format:
        string
    
    operations:
        shift:
            left
            right
        rotate:
            left
            right

    type:
        hexadecimals
    size:
        data size
        default: 32 bit
"""

import binary_decimals_hex as convert

def check_size(value="", size=32):
    if len(value) < size:
        print("increasing size of", value)
        missing_zero = size - len(value)
        for i in range(missing_zero):
            value = "0" + value
    elif len(value) > size:
        print(value, "too large! taking first", size, "bits")
        value = value[-size:]
    return value

def rotate_right(value="", bit=0, size=32):
    # convert to binary
    old_binary = convert.convert_to_binary(value, "hex")

    # check if binary string is 32 bit
    old_binary = check_size(old_binary, size)

    # rotating
    msb = old_binary[-bit:]
    lsb = old_binary[:-bit]
    new_binary = msb + lsb
    print("msb:", msb, "lsb:", lsb)
    print("old:", old_binary, "new:", new_binary)

    return convert.convert_to_hex(new_binary, "binary")

def rotate_left(value="", bit=0, size=32):
    # convert to binary
    old_binary = convert.convert_to_binary(value, "hex") 

    # check if binary string is 32 bit
    old_binary = check_size(old_binary, size)

    # rotating
    msb = old_binary[bit:size]
    lsb = old_binary[0:bit]
    new_binary = msb + lsb
    print("msb:", msb, "lsb:", lsb)
    print("old:", old_binary, "new:", new_binary)

    return convert.convert_to_hex(new_binary, "binary")

def shift_right(value="", bit=0, size=32):
