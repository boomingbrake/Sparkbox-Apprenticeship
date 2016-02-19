
class FakeConsole
  attr_reader :last_told, :last_asked

  def initialize (inputs)
    @input_array = inputs
    @last_told = Array.new
    @last_asked = Array.new
  end

  def tell(message)
    @last_told << message
  end

  def ask(question)
    @last_asked << question
    @input_array.shift
  end
end
