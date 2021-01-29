# class Song
    
#     extend Findable
#     attr_accessor :name
#     attr_reader :artist, :genre
    

#     @@all = []

#     def initialize(name, artist = nil, genre = nil)
#         @name = name
#         @artist = artist

#         # self.artist= artist if artist 

#         @genre = genre
#         # self.genre= genre if genre
        
#     end

#     def self.all
#         @@all
#     end 

#     def save
#         @@all << self
#     end

#     def self.create(song)
#         song = self.new(song)
#         song.save
#         song
#     end

#     def self.destroy_all
#         @@all.clear
#     end

# #     def artist
# #         @artist
# #     end

# #     def artist(artist)
# #         @artist = artist
# #         artist.add_song(self)
# # end


# #     def genre(genre)
# #         genre.songs << self unless genre.songs.include?(self)
# #         @genre = genre
# #     end

#     # def self.find_by_name(name)
#     #     self.detect{|artist| artist.name == name}
#     # end

    

# end





# class Artist
#     extend Findable
#     attr_accessor :name, :songs, :genre

#     @@all = []

#     def initialize(name)
#         @name = name
#         @songs = []
        
#     end

#     def self.all
#         @@all
#     end

#     def self.destroy_all
#         @@all.clear
#     end

#     def save
#         @@all << self  
#     end

#     def self.create(artist)
#         artist = self.new(artist)
#         artist.save
#         artist
#     end

#     def songs
#         @songs
#     end

#     # def add_song(song)
#     #     # @songs << song
#     #     # song.artist = self
#     #     if song.artist == nil
#     #         song.artist = self
#     #         @songs << self
#     #     end
#     # end




# end





# class Genre
#     extend Findable
    
#     attr_accessor :name, :songs

#     @@all = []

#     def initialize(name)
#         @name = name
#         @songs = []
       
#     end

#     def self.all
#         @@all
#     end

#     def self.destroy_all
#         @@all.clear
#     end

#     def save
#         @@all << self
#     end

#     def self.create(genre)
#         genre = self.new(genre)
#         genre.save
#         genre
#     end

#     # def artists
#     #     @songs.collect{|s| s.artist}.uniq
#     # end




    

# end