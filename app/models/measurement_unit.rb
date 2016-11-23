class MeasurementUnit < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :measurement_id, presence:true

  #Measurement Unit to Measurement Association
  belongs_to :measurement

end
