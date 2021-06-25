def no_dupes?(arr)
    newArr = []
    hash = Hash.new(0)
    arr.each do |val|
        hash[val] += 1
    end
    hash.each do |k, v|
        if v == 1
            newArr << k
        end
    end
    return newArr
end


# Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []