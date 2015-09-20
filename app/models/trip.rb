class Trip < ActiveRecord::Base
  has_many :pois #use @trip.pois to retrive pois
  has_many :restaurants
  validates :place, presence: true
  belongs_to :user
  geocoded_by :place
<<<<<<< HEAD
=======
  has_many :subregion_options
>>>>>>> f9ea994bf76f51607928865ff8293602d00e667c
  after_validation :geocode

end
