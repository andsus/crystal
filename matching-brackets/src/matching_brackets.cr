class MatchingBrackets
  def self.valid?(str)
    open_of = { '}' => '{', ']' => '[', ')' => '('}
    stack = [] of Char
    str.each_char { |c|
      case c
        when '{', '[', '('
          stack.push(c)
        when '}', ']', ')'
          return false unless stack.pop? == open_of[c]
      end
    }
    stack.empty?
  end
end