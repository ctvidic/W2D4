def longest_streak(string)
    i = 0
    hash = Hash.new(0)
    count = 0
    while i < string.length
        if string[i] == string[i+1]
            count += 1
            i+=1
        else
            hash[string[i]] = count
            i+=1
            count = 0
        end
    end
    x = 0
    max = string[0]
    hash.each do |k, v|
        if v >= x
            max = k
            x = v
        end
    end
    newString = ""
    (hash[max]+1).times do 
        newString += max
    end
    return newString
            

end

# Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'