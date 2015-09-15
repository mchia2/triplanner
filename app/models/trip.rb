class Trip < ActiveRecord::Base
  has_many :pois #use @trip.pois to retrive pois
  has_many :restaurants
  validates :place, presence: true
  belongs_to :user
  geocoded_by :place
  has_many :subregion_options
  after_validation :geocode

end
