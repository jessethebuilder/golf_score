class Course < ActiveRecord::Base
  validate :name, :presence => true

  has_many :holes
end
