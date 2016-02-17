class FakeNumberConsole
  attr_reader :last_putsed, :last_asked

  def initialize
    @guess_iterator = -1;
  end
  def tell(message)
    @last_putsed = message
  end

  def ask(question)
    @last_asked = question
    @guess_iterator+=1
  end
end
