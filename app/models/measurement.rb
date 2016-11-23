class Measurement < ActiveRecord::Base
  #Validations
  validates :name, presence: true, uniqueness: true
  #----------------

  #Associations
  #Measurement to Measurement Unit Association
  has_many :units, class_name: "MeasurementUnit", foreign_key: "measurement_id"
end
