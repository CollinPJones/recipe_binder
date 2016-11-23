class Measurement < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  #Measurement to Measurement Unit Association
  has_many :units, class_name: "MeasurementUnit", foreign_key: "measurement_id"
end
