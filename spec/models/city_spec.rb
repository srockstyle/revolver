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
require 'rails_helper'

RSpec.describe City, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
