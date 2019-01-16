class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # Returns an `array` all the paintings by an artist
    Painting.all.select {|x| x.artist == self}
  end

  def galleries
    # Returns an `array` of all the galleries that an artist
    #  has paintings in
    paintings.map {|x| x.gallery}
  end

  def cities
    # Return an `array` of all cities 
    # that an artist has paintings in
    galleries.map {|x| x.city}
  end

  def self.total_experience
    # Returns an `integer` 
    # that is the total years of experience of all artists
    self.all.map {|year| year.years_experience}.reduce(:+)
  end

  def self.most_prolific
    # Returns an `instance` of the artist with the 
    # highest amount of paintings per year of experience.
    self.all.max_by {|x| x.paintings.count / x.years_experience}
  end

  def create_painting(title, price, gallery)
    # Given the arguments of `title`, `price` and `gallery`, 
    # creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end
end
