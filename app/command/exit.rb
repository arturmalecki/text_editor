module Command
  class Exit
    include Commandable

    def message
      'Exit'
    end

    def exit?
      true
    end
  end
end
