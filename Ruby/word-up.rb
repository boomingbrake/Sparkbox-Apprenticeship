def count_words(sentence)
  counts = Hash.new(0)
  sentence_array = sentence.split(" ")
  sentence_array.each do |n|
    counts[n] +=1
  end
  counts
end


puts "What do you have to say?"
puts count_words(gets.chomp)
