# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def decoded_param
    UrlEncoder.decode Array(params[:id].to_i)
  end
end
