def triangle(int)
  stars = int
  spaces = 0
  while spaces < int
    spaces = int - stars
    puts ("*" * stars) + (" " * spaces)
    stars -= 1
  end
end

triangle(5)
triangle(9)
triangle(21)
