require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs



  @@artists = []

  def initialize
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song) # takes an instance of a song
    @songs << song  # inserst that song object into the instance variable @song
    song.artist = self # the song object has a setter method call artist and we are setting equal to the instance of an artist.
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
