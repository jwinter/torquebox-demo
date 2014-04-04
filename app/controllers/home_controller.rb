class HomeController < ApplicationController
  def index
    @time = Rails.cache.fetch('times-that-try-mens-souls', expires_in: 2.minutes) { Time.now }
    other_cache = TorqueBox::Infinispan::Cache.new(name: 'ridicuclock', mode: :distributed)
    other_cache.put('demo_guy', {first_name: 'joe'}.to_json)
    @other_cache_value = other_cache.get('demo_guy')

    queue = TorqueBox.fetch('/redsnake')
    queue.publish "I'm a lasagna hog"



    @endpoint = TorqueBox.fetch('stomp-endpoint') # This is using their Dependency Injection framework
  end
end
