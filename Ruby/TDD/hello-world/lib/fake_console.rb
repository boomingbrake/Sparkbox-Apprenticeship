
class FakeConsole
  attr_reader :last_putsed, :last_asked

  def tell(message)
    @last_putsed = message
  end

  def ask(question)
    @last_asked = question
    "Jimmy Johns"
  end
end
