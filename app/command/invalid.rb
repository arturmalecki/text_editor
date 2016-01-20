module Command
  class Invalid
    include Commandable

    def message
      'Invalid command'
    end

    def valid?
      false
    end
  end
end
