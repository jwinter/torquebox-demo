TorqueBox.configure do

  web do
    context "/"
  end

  options_for :messaging, :default_message_encoding => :json

  stomplet ExampleStomplet do
    name 'broadcast'
    route '/broadcast'
    config do
      type 'topic'
    end
  end
end
