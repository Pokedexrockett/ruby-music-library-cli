class Artist
    extend Findable
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
        # @songs << song
        # song.artist = self
        if song.artist == nil
            song.artist = self
            @songs << self
        end
    end




end

