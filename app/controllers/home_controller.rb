class HomeController < ApplicationController
  def index
    @time = Rails.cache.fetch('times-that-try-mens-souls', expires_in: 2.minutes) { Time.now }
    @endpoint = TorqueBox.fetch('stomp-endpoint')
  end
end
