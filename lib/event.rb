require 'pry'
require 'time'

class Event
  attr_accessor :start, :duration, :title, :attendees
  @@all_attendees = []

  def initialize(start, duration, title, attendees)
    @start = Time.parse(start)
    @duration = duration.to_i
    @title = title.to_s
    @@all_attendees = @email 
  end

  def to_s
    print"=>"
    puts
    puts "voici le titre: #{@title}"
    puts "La réunion debute le: #{@start}"
    puts "la durée sera de : #{@duration}"
    puts "les invités sont : #{@all_attendees}"
    
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
