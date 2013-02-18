class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_similar(movie)
  	similar_movies = []
  	unless movie.director.nil? || movie.director.empty?
  		similar_movies = Movie.find_all_by_director(movie.director)
  	end
    similar_movies

  end
end
