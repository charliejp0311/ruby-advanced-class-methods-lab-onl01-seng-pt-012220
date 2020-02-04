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
    self.Song.all << self
  end

  def self.create
    self.Song.new
  end

end
