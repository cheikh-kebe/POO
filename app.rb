# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require
require 'pry'
require 'time'



# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.



julie = User.new("julie@julie.com", 35)
jean = User.new("jean@jean.com", 23)
claude = User.new("claude@claude.com", 75)

anniversaire = Event.new("2021-04-27 14:00", 30, "the hacking project meeting", [julie, jean])

puts anniversaire.to_s
puts anniversaire.postpone
puts anniversaire.end_date
puts anniversaire.is_past?
puts anniversaire.is_future?
puts anniversaire.is_soon?

puts julie.find_by_email

puts anniversaire.age_analysis