def longest_consec(list, k)
  return 0 if k <= 0

  size = list.length
  numbers_list = list.map(&:length)
  max = 0
  string = ''
  i = 0
  while i <= size - k
    sum = numbers_list[i, k].sum
    if sum > max
      max = sum
      string = list[i, k].join
    end
    i += 1
  end
  string
end

puts longest_consec(%w[wlwsasphmxx owiaxujylentrklctozmymu wpgozvxxiu], 2)
