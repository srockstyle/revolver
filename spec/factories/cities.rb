# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_cities_on_name  (name)
#
FactoryBot.define do
  factory :city do
    id { Faker::Number.number(digits: 3) }
    name { Faker::Games::Pokemon.location }
    description { Faker::Address.state }
  end
end
