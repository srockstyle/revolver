# frozen_string_literal: true

# == Schema Information
#
# Table name: spots
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_spots_on_name  (name)
#
class Spot < ApplicationRecord
end
