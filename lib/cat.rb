require 'pry'
class Cat
  @@all = []
  # code goes here
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def name
    @name
  end

  def owner
    @owner
  end

  def mood
    @mood
  end

  def mood=(new_mood)
    @mood = new_mood
  end

  def owner=(new_owner)
    @owner = new_owner
  end

  def self.all
    @@all
  end

  
end