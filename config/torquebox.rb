TorqueBox.configure do

  web do
    context "/"
  end

  # Scheduled job, once every five minutes is called
  job HeartBeat do
    cron '0 */5 * * * ?'
  end

  options_for :messaging, :default_message_encoding => :json

  stomplet ExampleStomplet do
    name 'broadcast'
    route '/broadcast'
  end

  topic '/redsnake' do
    processor ExampleConsumer
  end

  service ExampleService do 
    config do
      name 'Joe W.'
    end
  end

  ruby do
    interactive true
  end
end
