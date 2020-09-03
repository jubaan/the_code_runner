def zero
  0
end

def one
  1
end

def two
  2
end

def three
  3
end

def four
  4
end

def five
  5
end

def six
  6
end

def seven
  7
end

def eight
  8
end

def nine
  9
end

def plus(number)
  self +.send(number.intern)
end

def minus(number)
  self - number
end

def times(number)
  self * number
end

def divided_by(number)
  self / number
end


