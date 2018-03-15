require "pry"

class Artist

  attr_accessor(:name, :songs)

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.none? { |artist| artist.name == name }
      artist = self.new(name)
      artist.save
      artist
    else @@all.find { |artist| artist.name == name }
      # binding.pry
   end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end

# Pry.start
