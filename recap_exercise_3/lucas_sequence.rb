def lucas_sequence(n)
    if n == 1
        return [2]
    elsif n == 2
        return [2, 1]
    elsif n <= 0
        return []
    else
        newArr = lucas_sequence(n-1)
        newArr << (lucas_sequence(n-1)[-1] + lucas_sequence(n-1)[-2])
        return newArr
    end
    
end



# Examples
p lucas_sequence(0)   # => []
p lucas_sequence(1)   # => [2]    
p lucas_sequence(2)   # => [2, 1]
p lucas_sequence(3)   # => [2, 1, 3]
p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]