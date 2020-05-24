"""
    !!! --- 30.202 hw-1 q22 --- !!!
    calculating w18 (idx: 17)
"""

import sha256_message_expander as sha256
import binary_decimals_hex as convert

header = '02000000671D0E2FF45DD1E927A51219D1CA1065C93B0C4E8840290A00000000000000002CD900FC3513260DF5BD2EABFD456CD2B3D2BACE30CC078215A907C045F4992E74749054747B1B1843F740C0'
msgs = sha256.step_ops(header)

# testing
w17_hex = msgs[16]
w17_decimal = convert.convert_to_int(w17_hex, "hex")
print("testing ...\nw17:", "\n  (hex)     ", w17_hex, "\n  (decimal) ", w17_decimal)

# q22. w18
w18_hex = msgs[17]
w18_decimal = convert.convert_to_int(w18_hex, "hex")
print("\nget results ...\nw18:", "\n  (hex)", w18_hex, "\n  (dec)", w18_decimal)
