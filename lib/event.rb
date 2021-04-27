require 'pry'
require 'time'

class Event
  attr_accessor :start, :duration, :title, :attendees
  @@all_attendees = []

  def initialize(start, duration, title, attendees)
    @start = Time.parse(start)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees 
  end

  def to_s
    print"=>"
    puts
    puts "voici le titre: #{@title}"
    puts "La réunion debute le: #{@start}"
    puts "la durée sera de : #{@duration}"
    puts "les invités sont : #{@attendees.join}"
    
  end

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end

  def postpone
    @start + (60*60*24)
  end

  def self.all
    return @@all_attendees
  end
  
  def end_date
    @start + @duration * 60
  end

  def is_past?
    @start < Time.now ? true : false
  end

  def is_future?
    @start > Time.now ? true : false
  end

  def is_soon?
    @start - Time.now < 30*60 ? true :false
  end

end
