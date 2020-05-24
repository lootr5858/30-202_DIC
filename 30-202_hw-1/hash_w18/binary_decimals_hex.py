"""
    !!! --- binary, decimals & hex conversion --- !!!
    format:
        string
        unsigned decimals
    
    number base:
        binary:       2
        decimals:     10
        hex: 16
"""

def convert_to_int(value="", base=""):
    if base == "binary" and value.isdecimal():
        return int(value, 2)
    elif base == "hex":
        return int(value, 16)
    else:
        print("invalid base!!! binary or hex only!!!")
        return None

def convert_to_hex(value="", base=""):
    if base == "binary" and value.isdecimal():
        return hex(convert_to_int(value, base))
    elif base == "decimal" and value.isdecimal:
        return hex(int(value))
    else:
        print("invalid base!!! binary or decimal only!!!")
        return None

def convert_to_binary(value="", base=""):
    if base == "decimal" and value.isdecimal():
        value = int(value, 10)  # convert string to int
        return bin(value).replace("0b", "")
    elif base == "hex":
        return "{0:08b}".format(int(value, 16))
    else:
        print("invalid base!!! decimal or hex only!!!")
        return None
