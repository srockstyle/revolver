# frozen_string_literal: true

# == Schema Information
#
# Table name: monsters
#
#  id          :bigint           not null, primary key
#  description :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_monsters_on_name  (name)
#
class Monster < ApplicationRecord
end
