class Hole < ActiveRecord::Base
  belongs_to :course

  validates :number, :presence => true, :numericality => {:only_integer => true}
  validates :par, :presence => true, :numericality => {:only_integer => true}
end
