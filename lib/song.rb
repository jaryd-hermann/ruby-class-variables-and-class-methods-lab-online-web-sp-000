class Song
attr_accessor :count, :artists, :genres
 @@count = 0
 @@genres = []
 @@artists = []

def initialize(name, artist, genre)
  #adding to class constant
  #giving new instance props
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

#method to count songs
def self.count
 @@count
end

#method to return array of unique genres
def genres
end


def artists
end


end
