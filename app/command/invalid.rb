module Command
  class Invalid
    include Commandable

    def valid?
      false
    end

    def error_messages
      'Invalid command'
    end
  end
end
