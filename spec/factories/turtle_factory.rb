# frozen_string_literal: true

FactoryBot.define do
  factory :turtle do
    name { Faker::JapaneseMedia::OnePiece.character }
    color { %w{blue green pink yellow}.sample }
    email { Faker::Internet.email }
  end
end
