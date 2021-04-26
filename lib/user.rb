require 'pry'

class User
  attr_accessor :email, :age
  @@all_user = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_user << self
  end

  def find_by_email
    puts "Voici l'adresse : #{@email}"
  end

  def self.all
    return @@all_user
  end

end