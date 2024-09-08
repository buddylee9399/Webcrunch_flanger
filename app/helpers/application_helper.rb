module ApplicationHelper

  def menu_items
    [{
      name: 'Home',
      path: root_path,
    }, {
      name: 'About',
      path: about_path,
    }, {
      name: 'Contact',
      path: contact_path,
    }, {
      name: 'Privacy',
      path: privacy_path,
    },].map do |item|
      {
        name: item[:name],
        path: item[:path],
        active: current_page?(item[:path])
      }
    end
  end

  def cart_count_over_one
    return total_cart_items if total_cart_items > 0
  end

  def total_cart_items
    total = @cart.line_items.map(&:quantity).sum
    return total if total > 0
  end
end
