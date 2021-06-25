

def flatten(data)
    newArr = []
    if data != Array
        newArr = data
    elsif data.class == Array
        data.each do |val|
            if flatten(val).class
            newArr << flatten(val)
        end
    end
    return newArr
end

array_1 = [1, [2, 3]]
p flatten(array_1)      # => [ 1, 2, 3, 4, 5, 6, 7, 8 ]