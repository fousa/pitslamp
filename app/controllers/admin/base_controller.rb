class Admin::BaseController < ApplicationController
  before_filter :authenticate
  before_filter :set_body_style

  private

  def set_body_style
    @body_style = "admin"
  end
end