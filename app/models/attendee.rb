class Attendee
  include TorqueBox::Messaging::Backgroundable
  # OR use
  # always_background :tired

  def big_sleep
    sleep(1000.years)
  end
end

Attendee.new.background.big_sleep # returns immediately
