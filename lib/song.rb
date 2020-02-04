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
    @@all.find{|songo| songo.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort! { |a, b| a.name <=> b.name }
  end

  def self.new_from_filename(f_name)
    file_split_artist = []
    file_split_song = []
    file_split_artist << f_name.split(" - ")
    file_split_artist.each do |f|
      f.split(".")
      file_split_song << f.flatten!
    end 
      
    end

    a = new

    binding.pry
    #a.name =
  end

end
