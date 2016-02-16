
class FakeConsole
  attr_reader :last_putsed

  def tell(message)
    @last_putsed = message
  end

  def ask(question)
    "Jimmy Johns"
  end
end
