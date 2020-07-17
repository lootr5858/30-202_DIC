""" -------- !! --------
      inverter equations
     -------- !! -------- """
import numpy as np


def cGD(c_ox, w, l_d):
    return c_ox * w * l_d


def cDB(w, y, c_j0, c_jsw):
    k_eq = 0.73
    return (w * y * c_j0 + (2 * y + w) * c_jsw) * k_eq


def cGB(c_ox, w, l_mask):
    return c_ox * w * l_mask


def cG(c_gb_n, c_gb_p):
    return c_gb_n + c_gb_p


def cLOAD(c_gd_n, c_gd_p, c_db_n, c_db_p, c_int, c_g):
    return c_gd_n + c_gd_p + c_db_n + c_db_p + c_int + c_g


def k1(k_prime, w, l):
    return k_prime * (w / l)

def k2(u_cox, wl):
    return u_cox *  wl


def tP(c_load, v_dd, k, v_t):
    abs_v_t = abs(v_t)

    numerator = c_load * v_dd
    denominator = k * ((v_dd - abs_v_t) ** 2)
    return numerator / denominator


def pn(v_t, v_dd):
    abs_v_t = abs(v_t)
    return abs_v_t / v_dd


def tRF(c_load, k, v_dd, p_n):
    frac1 = (2 * c_load) / (k * v_dd * (1- p_n))
    frac2 = (p_n - 0.1) / (1 - p_n)
    ln1 = np.log(19 - 20 * p_n)
    return frac1 * (frac2 + 0.5 * ln1)

def opsPeriod(t_raise, t_fall):
    return t_raise + t_fall


def opsFreq(t_raise, t_fall):
    return 1/opsPeriod(t_raise, t_fall)


def dymanicPower(freq, c_load, v_dd):
    return freq * c_load * (v_dd ** 2)


def cParallel(c_b0, w, l):
    return c_b0 * (w * l)


def cFringe(c_p0, w, l):
    return c_p0 * (2 * (w + l))

def cPF(c, a_p):
    return c * a_p


def cLumped(c_p, c_f):
    return c_p + c_f


def numSquare(l, w):
    return l / w


def rLumped(r_sheet, num_squares):
    return r_sheet * num_squares


def tPIHio(r_lumped, c_total):
    return np.log(2) * r_lumped * c_total
