require 'directors_database'
require 'pry'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  total = {}
  director_index = 0
  while director_index < nds.length do 
    director_name = nds[director_index][:name]
    total[director_name] = 0
    movie_index = 0 
    while movie_index < nds[director_index][:movies].length do 
        total[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
        movie_index += 1
    end
    director_index += 1
  end
 total
end


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total= 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
    total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  total
end






