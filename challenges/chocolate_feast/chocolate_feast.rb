def chocolateFeast(money, price, wrappers_per_free_bar)
  chocolates = money / price
  wrappers = chocolates

  while wrappers >= wrappers_per_free_bar
    new_chocolates = wrappers / wrappers_per_free_bar
    wrappers %= wrappers_per_free_bar
    wrappers += new_chocolates
    chocolates += new_chocolates
  end

  chocolates
end
