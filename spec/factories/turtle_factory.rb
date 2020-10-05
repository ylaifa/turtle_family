FactoryBot.define do
    factory :turtle do
        name { Faker::JapaneseMedia::OnePiece.character }
        color { %w{blue green pink yellow}.sample }
    end
end