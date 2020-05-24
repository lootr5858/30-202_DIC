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

# import hex_bitwise_operation as shift_reg
#
# print("\nrotate LEFT")
# v1 = "0xF"
# v2 = shift_reg.rotate_left(v1, bit=7)
# print(v1, v2)
#
# print("\nrotate RIGHT")
# v1 = "0xF"
# v2 = shift_reg.rotate_right(v1, bit=7)
# print(v1, v2)
#
# print("\nshift LEFT")
# v1 = "0xF"
# v2 = shift_reg.shift_left(v1, bit=4)
# print(v1, v2)
#
# print("\nshift RIGHT")
# v1 = "0xF"
# v2 = shift_reg.shift_right(v1, bit=4)
# print(v1, v2)

# import sha256_message_expander as sha256
#
# header = '02000000671D0E2FF45DD1E927A51219D1CA1065C93B0C4E8840290A00000000000000002CD900FC3513260DF5BD2EABFD456CD2B3D2BACE30CC078215A907C045F4992E74749054747B1B1843F740C0'
# msgs = sha256.step_ops(header)
# print("w17:", msgs[16])
# print("w18:", msgs[17])
