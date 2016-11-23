class MeasurementUnit < ActiveRecord::Base
  #Validations
  validates :name, presence: true, uniqueness: true
  validates :measurement_id, presence:true
  #----------------

  #Associations
  #Measurement Unit to Measurement Association
  belongs_to :measurement

end
