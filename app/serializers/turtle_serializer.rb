# frozen_string_literal: true

class TurtleSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :email
end
