"""
A collection of simple math operations
"""

def simple_add(a,b):
    """The sum of two numbers.
    
    Parameters
    ----------
    a : int or float
    A number.
    b : int or float
    A number.
    
    Returns
    -------
    int or float
    """
    return a+b

def simple_sub(a,b):
    """Subtract one number from another.
    """
    return a-b

def simple_mult(a,b):
    """The product of two numbers.
    """
    return a*b

def simple_div(a,b):
    """One number devided by another.
    """
    return a/b

def poly_first(x, a0, a1):
    """Calculate the value of a first order polynomial
    """
    return a0 + a1*x

def poly_second(x, a0, a1, a2):
    """Calculate the value of a second order polynomial
    """
    return poly_first(x, a0, a1) + a2*(x**2)

# Feel free to expand this list with more interesting mathematical operations...
# .....
