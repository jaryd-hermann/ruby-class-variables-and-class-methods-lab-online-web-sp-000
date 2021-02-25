class Song
attr_accessor :count, :artists, :genres
 @@count = 0
 @@genres = []
 @@artists = []

def initialize(name, artist, genre)
  #adding to class constant
  @@count += 1

  #giving new instance props
  @name = name
  @artist = artist
  @genre = genre
  @@genres << genre
  @@artists << artist
end

#method to count songs
def self.count
 @@count
end

#method to return array of unique genres
def self.genres
  #use uniq method to remove duplicates and return saved array
  @@genres.uniq!
end


def self.artists
  #use uniq method to remove duplicates and return saved array
  @@artists.uniq!
end

def self.genre_count
end

end
