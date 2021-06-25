class String
    def select(&block)
        block ||= Proc.new { false }

        newString = ""
        self.each_char do |char|
            if block.call(char)
                newString += char
            end
        end
        return newString
    end
end


# Examples
p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
p "HELLOworld".select          # => ""