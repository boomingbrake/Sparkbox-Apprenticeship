def ninetynine_problems_bennett_aint_one
  i = 99
  while i > 0
    line =  "\n#{i} bottles of beer on the wall, #{i} bottles of beer."
    line << "\nTake one down and pass it around, #{i -=1} bottles of beer on the wall."
    puts line
  end
end

ninetynine_problems_bennett_aint_one
