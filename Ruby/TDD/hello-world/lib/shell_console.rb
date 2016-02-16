class ShellConsole

  def ask(question)
    tell question
    gets.chomp
  end

  def tell(message)
    puts message
  end
end
