class Frame
  attr_accessor :first, :second
  def initialize(first, second)
    @first = first
    @second = second
  end

  def rolls
    [first,second]
  end

  def open?
    first + second < 10 ? true : false
  end

  def strike?
    first == 10 ? true : false
  end

  def spare?
    first + second == 10 ? true : false
  end

end
