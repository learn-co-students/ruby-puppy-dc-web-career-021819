require "pry"

Pry.config.input = STDIN
Pry.config.output = STDOUT

class Dog

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.clear_all
    @@all = []
  end

  def self.all
    puts @@all.map { |dog| dog.name }
    # binding.pry
  end

end
