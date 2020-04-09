require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist



  @@songs = []

  # def initialize
  #   @@songs << self
  # end

#<<<<<<< HEAD
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name} #same as find
  # end
#=======
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name} #same as find
  end
#>>>>>>> 21b3a8ab87f32bce62fd309f3cdcc617ec22d514

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

#<<<<<<< HEAD
  # def to_param
  #   #makes all letters mininscule
  #   name.downcase.gsub(' ', '-') # the first argument finds it and second replaces it
#=======
  #def to_param
    #makes all letters mininscule
    #name.downcase.gsub(' ', '-') # the first argument finds it and second replaces it
#>>>>>>> 21b3a8ab87f32bce62fd309f3cdcc617ec22d514
  #end
end
