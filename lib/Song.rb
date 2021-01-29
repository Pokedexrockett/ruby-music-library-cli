class Song
    
    extend Concerns::Findable
    attr_accessor :name, :artist, :genre
    
    

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        # @artist = artist

        self.artist= artist if artist != nil

        # @genre = genre
        self.genre= genre if genre != nil
        
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

    def artist=(artist)
        @artist = artist
        artist.add_song(self)

    end

    def genre=(genre)
        @genre = genre
        genre.songs << self if !genre.songs.include?(self)

    end

    def self.find_by_name(name)
        all.detect{|song| song.name == name}
    end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || create(name)
    end

    def self.new_from_filename(file)
        file = file.gsub(".mp3", "")
        artist, song, genre = file.split(" - ") #more than one variable assigns all to each element 
        song_artist = Artist.find_or_create_by_name(artist)
        song_genre = Genre.find_or_create_by_name(genre)
        new_song = Song.new(song, song_artist, song_genre)
    end

    def self.create_from_filename(file)
       song = self.new_from_filename(file)
       song.save
    end

    



    

end