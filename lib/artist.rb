class Artist
# song_count = 0
# we can set individual instance of Song equal to an instance of Artist class  at the end

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end
#
  def songs # this method allows us to call on an individual artist to return the list of songs that the artist has
    Song.all.select do |song|
        song.artist == self
  end
# we use self keyword to refer to the artist on which we are calling this method.
# We call artist= method on the song that is being passed in as an argument and set it equal to self-the artist
# telling a song that it belongs to an artist should happen when that song is added to the artist's @songs collection
#we write the code that accomplishes this inside our #add_song method.
end
def add_song(song)
song.artist = self
end
#This method will allow us to add new songs.
#We write this method in this class Artist because it is the artist responsibility to add a new song to their collection
#
# def add_song_by_name(name)
# artist = Song.new(name)
# add_song(artist)
# end
#
# def self.song_count
#   Song.all.count
#
# end
end
