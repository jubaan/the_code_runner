# doctest: Returns a string with the initial song
# >> song_decoder("AWUBBWUBC")
# => "A B C"
# >> song_decoder("AWUBWUBWUBBWUBWUBWUBC")
# => "A B C"
# >> song_decoder("WUBAWUBBWUBCWUB")
# => "A B C"

def song_decoder(song)
  song.gsub(/(WUB)+/, " ").strip
end
