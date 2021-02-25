class Song
attr_accessor :count, :artists, :genres
 @@count = 0

def initialize(name, artist, genre)
  #adding to class constant
  @@count += 1
  #giving new instance props
  @name = name
  @artist = artist
  @genre = genre
end

#method to count songs
def count
  @@count
end

#method to return array of unique genres
def genres
  @@genres = []
end


def artists
  @@artists = []
end


end
