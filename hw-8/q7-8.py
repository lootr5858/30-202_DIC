import inverter_equations as eqns
import prefix

""" ---------- !! ----------
        i/o specifications
    ---------- !! ---------- """
l = 1 * prefix.milli       # m (wire length)
w = 0.6 * prefix.micro  # m (wire width

c_b0 = 0.0411 * prefix.femto * (1 / (prefix.micro ** 2))
cb0_tol = 0.0102 * prefix.femto

c_p0 = 0.0177 * prefix.femto * (1 / prefix.micro)
cp0_tol = 0.0044 * prefix.femto

""" ---------- !! ----------
            q7.  total cap
    ---------- !! ---------- """
c_p = eqns.cParallel(c_b0, w, l)
c_f = eqns.cFringe(c_p0, w, l)
c_total = eqns.cLumped(c_p, c_f)
ct_ff = c_total * (1 / prefix.femto)
print("\nQ7. total capacitance = {} fF".format(ct_ff))

""" ----------- !! -----------
     q8.  cFringe : cParallel
     ----------- !! ----------- """
w = 0.3 * prefix.micro      # m
c_p = eqns.cParallel(c_b0, w, l)
c_f = eqns.cFringe(c_p0, w, l)
c_ratio = c_f / c_p
print("\nQ8. cFinge : cParallel = {}".format(c_ratio))
