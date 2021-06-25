def multiply(a,b)
    sum = 0
    multiplier = 1
    if a != (a).abs 
        a = (a).abs
        if b != (b).abs
            multiplier = -1
            b = (b).abs
        else
            b = -b
        end
    end

    if a == 1 
        sum = b
    elsif a == 0
        sum = 0
    else
        sum += multiply(a-1,b) + b
    end
    return sum
end


# Examples
p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18
p multiply(-3, 0)       # => -18