def display_marks(**kwarg):
##kwarg allows us to pass the variable length of keyword arguments to the function.
##The arguments are passed as a dictionary and these arguments make a dictionary inside function with name same as the parameter"""
    for key, value in kwarg.items():
        print(f'{key} : {value}')

display_marks(Name='John', English=80, Maths=90)