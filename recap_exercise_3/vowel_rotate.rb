def vowel_rotate(string)
    vowels = 'aeiou'
    vowelsArr = []
    newString = ""
    lastVowel = ""
    string.reverse.each_char do |char|
        if vowels.include?(char)
            lastVowel = char
            break
        end
    end

    string.each_char do |char|
        if !vowels.include?(char)
            newString += char
        elsif vowels.include?(char) && vowelsArr.length > 0
            newString += vowelsArr[-1]
            vowelsArr << char
        else
            newString += lastVowel
            vowelsArr << char
        end
    end
    return newString
end







# Examples
p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"