class Message
  def initialize(message)
    @message = message
  end

  def display
    40.times { yield('*') }
    yield(@message)
    40.times { yield('*') }
  end
end
