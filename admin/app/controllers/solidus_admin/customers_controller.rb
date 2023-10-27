# frozen_string_literal: true

module SolidusAdmin
  class CustomersController < SolidusAdmin::BaseController
    def edit
    end

    private

    def authorization_subject
      Spree::User
    end
  end
end
