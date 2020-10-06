# frozen_string_literal: true

class Turtle < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
end
