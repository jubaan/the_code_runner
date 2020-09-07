# doctest: returns encripted string: 'hae and via ecy'
# >> encryption('haveaniceday')
# => 'hae and via ecy'
# doctest: returns encrypted string: 'fto ehg ee dd'
# >> encryption('feedthedog')
# => 'fto ehg ee dd'
# doctest: returns encrypted string: 'clu hlt io'
# >> encryption('chillout')
# => 'clu hlt io'

def encryption(string)
  size    = string.length
  columns = Math.sqrt(size).round
  rows    = Math.sqrt(size).ceil
  matrix  = Array.new(rows) { [] }

  i = 0
  letter = 0
  while i < columns
    j = 0

    while j < rows
      matrix[j][i] = string[letter]

      j += 1

      break if letter == size - 1

      letter += 1
    end

    i += 1
  end

  matrix.map(&:join).join(' ')
end
