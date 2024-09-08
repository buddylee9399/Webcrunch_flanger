# == Schema Information
#
# Table name: instruments
#
#  id          :integer          not null, primary key
#  brand       :string
#  condition   :string
#  description :text
#  finish      :string
#  model       :string
#  price       :decimal(5, 2)    default(0.0)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_instruments_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class InstrumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
