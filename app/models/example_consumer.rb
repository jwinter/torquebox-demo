class ExampleConsumer < TorqueBox::Messaging::MessageProcessor
  def on_message(body)
    Rails.logger.info body.reverse
  end
  def on_error(exception)
    Rails.logger.error "Exception raised #{exception.backtrace}"
    raise exception
  end
end
