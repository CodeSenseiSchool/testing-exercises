require "active_model"

class Exercise
  include ActiveModel::Model

  attr_accessor :name, :description, :rating

  validates :name, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
