# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# Viewer#initialize(username)
pam = Viewer.new("Pam")
jim = Viewer.new("Jim")
dwight = Viewer.new("Dwight")


# Movie#initialize(title)
transformers = Movie.new("Transformers")
it = Movie.new("It")
conjuring = Movie.new("Conjuring")

# Review#initialize(viewer, movie, rating)
r1 = Review.new(pam, transformers, 8)
r2 = Review.new(jim, it, 9)
r3 = Review.new(dwight, conjuring, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
