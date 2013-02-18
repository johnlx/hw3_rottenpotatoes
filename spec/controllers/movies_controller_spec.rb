require 'spec_helper'

describe MoviesController  do
  describe 'Find similar movies' do
    it 'should call the model method that finds movies with the same director' do
      movie = Movie.create!(:title => "Test Movie", :director => "Test Director")
      Movie.should_receive(:find_similar).with(movie) {[movie]}
      post :similar, {:id => movie.id}
    end
  end
end
	