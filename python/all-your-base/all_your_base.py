def rebase(input_base, digits, output_base):
    # input validation error flagging
    # for input
    if input_base < 2:
        raise ValueError("input base must be >= 2")
    # non-negative digits smaller or equal to input base
    if any([(i >= input_base or i < 0) for i in digits]):
        raise ValueError("all digits must satisfy 0 <= d < input base")
    # or, for output
    if output_base < 2:
        raise ValueError("output base must be >= 2")

    dig = [digits] if isinstance(digits, int) else digits # handles int and lists of int
    # Sum up the digits elevated to the input base to the power of its position
    dec_sum = sum([d * input_base ** (len(dig)-i-1) for i, d in enumerate(dig)])
    e = 1 # positional exponent
    # Find the smallest power of output base larger than decimal sum.
    while output_base ** e < dec_sum:
        e += 1
    e -= 1 # largest power of the base smaller than decimal sum.
    ob_digits =  [0] * (e + 1) # output base digits list
    p = 0 # Iterator for position
    o = output_base-1 # largest digit in a position for output base
    while e >= 0 and dec_sum > 0: # largest output base power smaller than sum.
        if o * (output_base ** e) <= dec_sum: # largest multiple of that power.
            dec_sum -= o * (output_base ** e) # Substract the largest ob multiple
            ob_digits[p] = o # Add the multiple to the output base digit
            p += 1 # Move on to the next position
            e -= 1 # Move on to the next smallest power of base
            o = output_base # begin again at largest output base digit (multiple)
        o -= 1
    return ob_digits
