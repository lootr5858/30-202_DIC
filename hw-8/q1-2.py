import inverter_equations as eqns
import prefix

""" ---------- !! ----------
     inverter specifications
     ---------- !! ---------- """
v_dd = 1.2  # V

v_tp = -0.51  # V
v_tn = 0.53  # V

k_prime_n = 98.2 * prefix.micro  # A / V^2
k_prime_p = 46 * prefix.micro  # A / V^2

c_ox_n = 22 * prefix.milli  # F / m^2
c_ox_p = 19.5 * prefix.milli  # F / m^2

c_jsw = 300 * prefix.pico  # F / m
c_j0 = 300 * prefix.micro  # F / m^2

phi_0 = 1.002  # V
l_d = 10 * prefix.nano  # m
l_mask = 60 * prefix.nano  # m
l = l_mask
y = 720 * prefix.nano  # m
w_inv1 = 600 * prefix.nano  # m
w_inv2 = 3 * w_inv1   # m

c_int = 0    # F

""" ---------- !! ----------
               q1.  t_plh
     ---------- !! ---------- """
c_gd_n = eqns.cGD(c_ox_n, w_inv1, l_d)
c_gd_p = eqns.cGD(c_ox_p, w_inv1, l_d)
print("c_gd_n: ", c_gd_n, "F")
print("c_gd_p: ", c_gd_p, "F")

c_db_n = eqns.cDB(w_inv1, y, c_j0, c_jsw)
c_db_p = c_db_n
print("c_db_n: ", c_db_n, " F")
print("c_db_p: ", c_db_p, " F")

c_gb_n = eqns.cGB(c_ox_n, w_inv2, l_mask)
c_gb_p = eqns.cGB(c_ox_p, w_inv2, l_mask)
c_g = eqns.cG(c_gb_n, c_gb_p)
print("c_gb_n:", c_gb_n, " F")
print("c_gb_p: ", c_gb_p, " F")
print("c_g: ", c_g, " F")

c_load = eqns.cLOAD(c_gd_n, c_gd_p, c_db_n, c_db_p, c_int, c_g)
print("c_load: ", c_load, " F")

k_p = eqns.k1(k_prime_p, w_inv1, l)
t_plh = eqns.tP(c_load, v_dd, k_p, v_tp)
tplh_ps = t_plh * (1 / prefix.pico)
# print("k_p: ", k_p, " A/m^2")
# print("t_plh: ", t_plh, " ps")

print("\nQ1. t_plh = {} ps".format(tplh_ps))


""" ---------- !! ----------
               q2.  t_phl
     ---------- !! ---------- """
k_n = eqns.k1(k_prime_n, w_inv1, l)
t_phl = eqns.tP(c_load, v_dd, k_n, v_tn)
tphl_ps = t_phl * (1 / prefix.pico)

print("\nQ2. t_phl = {} ps".format(tphl_ps))
