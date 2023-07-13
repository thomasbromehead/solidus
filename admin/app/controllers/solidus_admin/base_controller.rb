# frozen_string_literal: true

require 'geared_pagination'

module SolidusAdmin
  class BaseController < Spree::BaseController
    include ::GearedPagination::Controller

    layout 'solidus_admin/application'
    helper 'solidus_admin/container'
    helper 'solidus_admin/layout'
  end
end
