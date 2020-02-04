require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    self.new
  end

  def self.new_by_name(name)
    song = new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = new
    song.name = name
    song
  end

  def self.find_by_name(name)
    @@all.find{|doggo| doggo.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end

  end

  def self.alphabetical
    @@all.collect do |song|
      songs = []
      songs << song.name
      songs.sort!
      i = 0
      while i < songs.length
        songs[i] = find_by_name(songs[i])
        i += 1
      end
      songs.flatten
    end

  end
end
