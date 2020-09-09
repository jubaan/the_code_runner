def chocolateFeast(n, c, m)
  chocolates = n / c
  wrappers = chocolates

  while wrappers >= m
    new_chocolates = wrappers / m
    wrappers %= m
    wrappers += new_chocolates
    chocolates += new_chocolates
  end

  chocolates
end
