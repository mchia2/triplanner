class Trip < ActiveRecord::Base
  has_many :pois #use @trip.pois to retrive pois
  has_many :restaurants
  has_many :country_code
  validates :place, presence: true
  belongs_to :user
  geocoded_by :place
  geocoded_by :country_code
  has_many :subregion_options
  after_validation :geocode

end
