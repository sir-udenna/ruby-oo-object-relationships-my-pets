require 'pry'
class Owner
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def name 
    @name
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select do | cat |
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do | dog |
      dog.owner == self
    end
  end

  def buy_cat
  end
end