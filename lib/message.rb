class Message
  def initialize(message)
    @message = message
  end

  def display
    yield('*' * 40)
    yield(@message)
    yield('*' * 40)
  end
end
