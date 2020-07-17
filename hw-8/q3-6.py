import inverter_equations as eqns
import prefix

""" ---------- !! ----------
     inverter specifications
    ---------- !! ---------- """
v_t_n = 0.5       # V
v_t_p = -0.48   # V

un_cox = 98 * prefix.micro      # A / V^2
up_cox = 46 * prefix.micro      # A / V^2

wl_n = 20
wl_p = 30

v_dd = 1.2  # V

c_load = 10 * prefix.femto  # F

""" ---------- !! ----------
             q3.  raise time
     ---------- !! ---------- """
k_p = eqns.k2(up_cox, wl_p)
const_p = eqns.pn(v_t_p, v_dd)
t_r = eqns.tRF(c_load, k_p, v_dd, const_p)
tr_ps = t_r * (1 / prefix.pico)
print("\nQ3. rise time = {} ps".format(tr_ps))

""" ---------- !! ----------
          q4.  fall time
     ---------- !! ---------- """
k_n = eqns.k2(un_cox, wl_n)
const_n = eqns.pn(v_t_n, v_dd)
t_f = eqns.tRF(c_load, k_n, v_dd, const_n)
tf_ps = t_f * (1 / prefix.pico)
print("\nQ4. fall time = {} ps".format(tf_ps))

""" ---------- !! ----------
      q5.  max ops speed
     ---------- !! ---------- """
max_ops_speed = eqns.opsFreq(t_r, t_f)
max_ghz = max_ops_speed * (1 / prefix.giga)
print("\nQ5. max operating speed = {} GHz".format(max_ghz))

""" ---------- !! ----------
      q6. dynamic power
     ---------- !! ---------- """
powr = eqns.dymanicPower(max_ops_speed, c_load, v_dd)
p_uW = powr * (1 / prefix.micro)
print("\nQ6. dynamic power = {} uW".format(p_uW))
