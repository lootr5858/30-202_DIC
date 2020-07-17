import numpy as np

"""
30.202 HW6
Q2-6

Parameters:
    L_n = L_p = L_min
    W_n = 4 * L_min
    W_p = 2 * W_n
    V_dd = 3.8V

    nmos:
        p_hi = 0.7
        t_ox = 9.6e-9   # oxide thickness in m
        x_j = 0.2u
        t
"""

''' Constants '''
vdd = 3.8
ld = theta_w = lambda_c = 0

# nmos
kn = 1.9647e-4
vto_n = 0.6566

# pmos
kp = 4.874e-5
vto_p = -0.9213


''' Equations '''


def cal_kr(kn, kp):
    return kn / kp


def cal_vth(vto_n, kn, kp, vdd, vto_p):
    kr = cal_kr(kn, kp)
    num = vto_n + np.sqrt(1 / kr) * (vdd - np.abs(vto_p))
    denom = 1 + np.sqrt(1 / kr)
    print("k_r = {}\nnumerator = {}\ndenominator = {}".format(kr, num, denom))
    return num / denom

def cal_vil (vout, vto_p, vdd, kn, kp, vto_n):
    kr = cal_kr(kn, kp)
    num = 2 * vout - np.abs(vto_p) - vdd + kr * vto_n
    denom = 1 + kr
    return num/denom


''' Answers '''
# Q2. Vth
print("\nQ2. Find Vth!\n----------------------------------------")
vth = cal_vth(vto_n, kn, kp, vdd, vto_p)
print("\nV_th = {}\n----------------------------------------".format(vth))


