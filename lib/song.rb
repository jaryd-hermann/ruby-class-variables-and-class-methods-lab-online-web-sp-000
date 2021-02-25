class Song
attr_accessor :name, :artist, :genre
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
  genre_count = {}
  @@genres.each do | genre |
    if genre_count[genre] #if the genre is already in the hash
      genre_count[genre] += 1
    else #if it's a new genre
      genre_count[genre] = 1
  end
end
  genre_count # return array
end

def self.artist_count
  artist_count = {}
  @@artists.map do | artist |
    if artist_count[artist] #if the artist is already in the hash
      artist_count[artist] += 1
    else #if it's a new artist
      artist_count[artist] = 1
  end
end
artist_count #return array
end




end # end of class
