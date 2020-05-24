# import binary_decimals_hexa as convert

# # binary to decimal
# b = "binary"
# ov = "101110"
# nv = convert.convert_to_int(ov, b)
# print(b, ov, nv)

# # hexadecimal to decimal
# b = "hexadecimal"
# ov = "ac9"
# nv = convert.convert_to_int(ov, b)
# print(b, ov, nv)

# # binary to hexadecimal
# b = "binary"
# ov = "101110"
# nv = convert.convert_to_hexadecimals(ov, b)
# print(b, ov, nv)

# # decimal to hexadecimal
# b = "decimal"
# ov = "3659"
# nv = convert.convert_to_hexadecimals(ov, b)
# print(b, ov, nv)

# # decimal to binary
# b = "decimal"
# ov = "3659"
# nv = convert.convert_to_binary(ov, b)
# print(b, ov, nv)

# # hexadecimal to binary
# b = "hexadecimal"
# ov = "ac9"
# nv = convert.convert_to_binary(ov, b)
# print(b, ov, nv)

import hex_bitwise_operation as shift_reg

print("\nrotate LEFT")
v1 = "0xF"
v2 = shift_reg.rotate_left(v1,bit=7)
print(v1, v2)

print("\nrotate RIGHT")
v1 = "0xF"
v2 = shift_reg.rotate_right(v1,bit=7)
print(v1, v2)