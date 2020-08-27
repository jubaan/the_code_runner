def song_decoder(song)
  song.gsub(/(WUB)+/, ' ').strip
end

song_decoder('WUBAWUBBWUBCWUB')
