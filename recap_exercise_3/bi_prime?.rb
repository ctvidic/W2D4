require 'prime'

def bi_prime?(num)
    (2..num).each do |i|
        (2..num).each do |y|
            if y * i == num && Prime.prime?(y) && Prime.prime?(i)
                return true
            end
        end
    end
    return false
end


# Examples
p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false