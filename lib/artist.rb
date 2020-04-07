require 'pry'

class Artist

  #### Attributes ####
  attr_accessor :name
  attr_reader :songs

  @@artists = []


  #### Instance Methods ####
  include Paramable
  include Memorable::InstanceMethods

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


  #### Class Methods ####
  extend Memorable::ClassMethods
  extend Findable

  def self.all
    @@artists
  end
end
