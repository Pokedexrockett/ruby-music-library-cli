class Song
    
    extend Findable
    attr_accessor :name, :artist, :genre
    
    

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        @artist = artist

        # self.artist= artist if artist 

        @genre = genre
        # self.genre= genre if genre
        
    end

    def self.all
        @@all
    end 

    def save
        @@all << self
    end

    def self.create(song)
        song = self.new(song)
        song.save
        song
    end

    def self.destroy_all
        @@all.clear
    end

   



    

end