# frozen_string_literal: true

# @component "orders/customer"
class SolidusAdmin::Orders::Customer::ComponentPreview < ViewComponent::Preview
  include SolidusAdmin::Preview

  def overview
    render_with_template
  end

  # @param order text
  def playground(order: "order")
    render component("orders/customer").new(order: order)
  end
end
