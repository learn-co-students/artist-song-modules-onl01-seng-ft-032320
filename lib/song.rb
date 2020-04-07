require 'pry'

class Song

  #### Attributes ####
  attr_accessor :name
  attr_reader :artist

  @@songs = []


  #### Instance Methods ####
  include Paramable
  include Memorable::InstanceMethods
  
  def artist=(artist)
    @artist = artist
  end


  #### Class Methods ####
  extend Memorable::ClassMethods
  extend Findable

  def self.all
    @@songs
  end
end
