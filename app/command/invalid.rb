module Command
  class Invalid
    def message
      'Invalid command'
    end

    def exit?
      false
    end

    def valid?
      false
    end

    def run
    end
  end
end
