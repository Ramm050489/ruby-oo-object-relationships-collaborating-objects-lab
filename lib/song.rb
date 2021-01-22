class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song = self.new(filename.split(" - ")[1])
        artist = filename.split(" - ")[0]
        artist = Artist.new(artist)
        song.artist = artist
        song
        
    end

    def self.find(para)
        self.all.find{|artist| }
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

end