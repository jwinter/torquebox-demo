class HomeController < ApplicationController
  def index
    @endpoint = TorqueBox.fetch('stomp-endpoint')
  end
end
