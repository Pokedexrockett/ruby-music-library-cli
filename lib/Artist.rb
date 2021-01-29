class Artist
    extend Concerns::Findable
    attr_accessor :name, :songs, :genre

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self  
    end

    def self.create(artist)
        artist = self.new(artist)
        artist.save
        artist
    end

    def songs
        @songs
    end

    def add_song(song)
        
        song.artist = self unless song.artist
        @songs << song unless songs.include?(song)
        # if song.artist == nil
        #     song.artist = self 
        #     @songs << song
        # end
    end

    def genres
        songs.collect do |song|
            song.genre
        end.uniq
    end




end

