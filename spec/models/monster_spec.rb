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
require 'rails_helper'

RSpec.describe(Monster) do
  pending "add some examples to (or delete) #{__FILE__}"
end
