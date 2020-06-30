class Artist
# song_count = 0
# we can set individual instance of Song equal to an instance of Artist class  at the end

#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#   end
#
#   def songs
#     Song.all.select do |song|
#         song.artist == self
#   end
# end
def add_song(song) #This method will allow us to add new songs. We write this method in this class Artist because it is the artist responsibility to add a new song to their collection
song.artist = self
end
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
