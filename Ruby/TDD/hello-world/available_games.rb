klassArray = []
Dir['./lib/*_game.rb'].each do |rb_file|
  # do work on files ending in .rb in the desired directory
  klassArray << "#{File.basename(rb_file, ".rb").split('_').collect(&:capitalize).join}.new(console)"
end

puts klassArray
