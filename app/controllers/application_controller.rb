class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @now = Time.now.utc
    @container = `hostname`.strip || 'unknown'
  end
end
