import inverter_equations as eqns
import prefix

""" ---------- !! ----------
        i/o specifications
    ---------- !! ---------- """
w1 = 1.5 * prefix.micro     # m
w2 = 0.5 * prefix.micro     # m
l = 500 * prefix.micro        # m

r_sheet = 15        # ohm / square
c_b0 = 0.106  * prefix.femto * (1 / (prefix.micro ** 2))    # F / m^2
c_p0 = 0.043 * prefix.femto * (1 / prefix.micro)    # F / m

""" ----------- !! -----------
     q9.  propagation delay
     ----------- !! ----------- """
sq1 = eqns.numSquare(l, w1)
sq2 = eqns.numSquare(l, w2)
sq_total = sq1 +  sq2
r_lumped = eqns.rLumped(r_sheet, sq_total)

a = l * (w1 + w2)
p = 4 * l + w1 + w2 + abs(w1 - w2)
c_p = eqns.cPF(c_b0, a)
c_f = eqns.cPF(c_p0, p)
c_lumped = eqns.cLumped(c_p, c_f)

t_plh_line = eqns.tPIHio(r_lumped, c_lumped)
tplh_line_ns = t_plh_line * (1 / prefix.nano)
print("\nQ9. propagation delay = {} ns".format(tplh_line_ns))
