# doctest: 'Same day, month, and year, fine equals 0
# >> libraryFine(15, 12, 2000, 15, 12, 2000)
# => 0
# doctest: 'Same year, same month, 5 days earlier, fine equals 0
# >> libraryFine(10, 12, 2000, 15, 12, 2000)
# => 0
# doctest: 'Same year, same month, 5 days later, fine equals 75
# >> libraryFine(20, 12, 2000, 15, 12, 2000)
# => 75
# doctest: 'Same year, 1 month after due date, same day, fine equals 500
# >> libraryFine(20, 02, 2000, 15, 01, 2000)
# => 500
# doctest: 'Same year, 1 month before due date, same day, fine equals 0
# >> libraryFine(20, 01, 2000, 15, 02, 2000)
# => 0
# doctest: '1 year after, same month, same day, fine equals 10_000
# >> libraryFine(20, 01, 2001, 15, 02, 2000)
# => 10_000
# doctest: '1 year before, same month, same day, fine equals 0
# >> libraryFine(20, 01, 1999, 15, 02, 2000)
# => 0
# doctest: '1 day difference, different year,different month, fine equals 10000
# >> libraryFine(01, 01, 2000, 31, 12, 1999)
# => 10000
# doctest: '1 mont difference, different year,different month, fine equals 10000
# >> libraryFine(01, 02, 2000, 31, 01, 2000)
# => 500

def libraryFine(d1, m1, y1, d2, m2, y2)
  days_late   = d1 - d2
  months_late = m1 - m2
  years_late  = y1 - y2

  if years_late.positive?
    10_000
  elsif months_late.positive? && years_late.zero?
    months_late * 500
  elsif days_late.positive? && months_late.zero? && years_late.zero?
    days_late * 15
  else
    0
  end
end
