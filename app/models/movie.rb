class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review|review.movie == self}
    # binding.pry
  end

  def reviewers
    reviews.collect {|review| review.viewer}
    # binding.pry
  end

  def the_average 
    # binding.pry
    average = Review.all.select {|review| review.movie}
    average.collect {|review| review.rating}
  end

  def average_rating
  # average = Review.all.select {|review| review.movie}
  # total = average.collect {|review| review.rating}.count # =>3
  # total / Review.all.length
# binding.pry
  the_average.sum / the_average.length
  end

  # def self.highest_rated
  #    movies = Review.all.select {|review|review.movie}
  #    highest = movies.collect {|review| review.viewer}
  #   binding.pry
  # end

  # I want to look in the Movie instances, 
  # single out just the
end
