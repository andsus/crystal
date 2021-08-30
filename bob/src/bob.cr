module Bob
  def self.hey(remark)
    case Utterance.new(remark)
    when .silence?
      "Fine. Be that way!"
    when .forceful_question?
      "Calm down, I know what I'm doing!"
    when .shouting?
      "Whoa, chill out!"
    when .question?
      "Sure."
    else
      "Whatever."
    end
  end

  struct Utterance
    def initialize(@utterance : String)
    end

    def silence?
      @utterance.blank?
    end

    def shouting?
      chars.any?(&.uppercase?) && chars.none?(&.lowercase?)
    end

    def question?
      @utterance.rstrip.ends_with? '?'
    end

    def forceful_question?
      question? && shouting?
    end

    private def chars
      @utterance.each_char
    end
  end
end