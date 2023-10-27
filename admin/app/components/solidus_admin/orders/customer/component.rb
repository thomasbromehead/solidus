# frozen_string_literal: true

class SolidusAdmin::Orders::Customer::Component < SolidusAdmin::BaseComponent
  def initialize(order:)
    @order = order
    @customer = order.user || Guest.new(email: order.email)
  end

  Guest = Struct.new(:email, :id, keyword_init: true) do
    def name
      email
    end

    def orders
      []
    end
  end

end
