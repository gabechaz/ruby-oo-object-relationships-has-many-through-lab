
require 'pry'

class Genre
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select {|song| song.genre == self}
    end
    def artists
        # binding.pry
        Song.all.select {|song| song.genre == self}.map {|song| song.artist}
        
    end
end