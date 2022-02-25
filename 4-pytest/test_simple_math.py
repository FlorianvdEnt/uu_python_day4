import simple_math as sm

def test_simple_add():
    assert sm.simple_add(1,1) == 2

def test_simple_sub():
    assert sm.simple_sub(23, 5) == 18

def test_simple_mult():
    assert sm.simple_mult(3, 3) == 9

def test_simple_div():
    assert sm.simple_div(12, 4) == 3

def test_poly_first():
    assert sm.poly_first(2, 5, 3) == 11

def test_poly_second():
    assert sm.poly_second(2, 5, 3, .5) == 13

