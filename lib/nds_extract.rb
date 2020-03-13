$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  # Access the source array
  # Loop over each element in source
  # Access the value of the :name key in the Hash
  # Push each value into a new array
  # Return the new array
  directors_list = [] # New array
  director_index = 0 # Counter for the index of the director's information in d_d
  while director_index < source.length do # While the current index of director's info is less than the length of the source nds do...
    directors_list.push(source[director_index][:name]) # Push the value of the :name key in the director_index in the source nds WAIT I'M
                                                      # A BIT CONFUSED HERE BY director_index - isn't it a counter?
    director_index += 1 # Increment the counter
  end
  directors_list # Return the new array
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total

  director_earnings_hash = directors_totals(source) # The result of directors_totals (saved in its hash)
  director_names = list_of_directors(source) # The result of list_of_directors (saved in its array)
  index = 0 # Counter for
  total = 0 # Counter for
    while index < director_names.length do # While the current index is less than the length of the director_names hash do...
      dir_name = director_names[index]
      total += director_earning_hash[dir_name]
      index += 1
    end
  total

  # total = 0
  # dir_totals = directors_totals(source)
  # dir_list = list_of_directors(source)
  # index = 0
  # while  index < dir.length do
  #   total += dir_totals[dir[index]]
  #   index += 1
  # end
end
