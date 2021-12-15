# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'

# url = 'http://www.omdbapi.com/?apikey=f9d861d0'
# items = JSON.parse(URI.open(url).read)

# items.each do |item|
#   if item['Type'] == 'movie'
#     puts 'Adding Movie to db'
#     title = item['Title']
#     actors = item['Actors']
#     director = item['Director']
#     synopsis = item['Plot']
#     poster = item['Poster']
#     year = item['Year'].to_i
#     Movie.create(title: title, actors: actors, director: director, synopsis: synopsis, poster: poster, year: year)
#   end
#   if item['Type'] == 'series'
#     puts 'Adding series to db'
#     title = item['Title']
#     actors = item['Actors']
#     seasons = item['totalSeasons'].to_i
#     synopsis = item['Plot']
#     poster = item['Poster']
#     Serie.create(title: title, actors: actors, seasons: seasons, synopsis: synopsis, poster: poster)
#   end
# end

require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated'
poster = 'https://image.tmdb.org/t/p/w200'
movies = JSON.parse(URI.open(url).read)
movies['results'].each do |movie|
  puts "Adding #{movie['title']}..."
  title = movie['title']
  synopsis = movie['overview']
  actors = 'Some actors...'
  director = 'Some director'
  year = movie['release_date']
  poster = "#{poster}#{movie['poster_path']}"
  Movie.create(title: title, synopsis: synopsis, actors: actors, director: director, poster: poster, year: year)
end
