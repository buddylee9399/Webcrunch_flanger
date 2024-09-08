# == Schema Information
#
# Table name: line_items
#
#  id            :integer          not null, primary key
#  quantity      :integer          default(1)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  cart_id       :integer          not null
#  instrument_id :integer          not null
#
# Indexes
#
#  index_line_items_on_cart_id        (cart_id)
#  index_line_items_on_instrument_id  (instrument_id)
#
# Foreign Keys
#
#  cart_id        (cart_id => carts.id)
#  instrument_id  (instrument_id => instruments.id)
#
require "test_helper"

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
