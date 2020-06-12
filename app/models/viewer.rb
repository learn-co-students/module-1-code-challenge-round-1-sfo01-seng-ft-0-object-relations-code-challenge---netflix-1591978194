class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end


  def reviews 
    # binding.pry
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    # binding.pry
    reviews.collect {|review| review.movie}
  end

  def reviewed_movie?(movie)
  # look through all reivews
  # reviewed_movies
  reviewed_movies.include?(movie)
    # binding.pry
  end

  # def rate_movie(movie, rating)

  # end
end
