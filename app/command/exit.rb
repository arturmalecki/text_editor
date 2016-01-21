module Command
  class Exit
    include Commandable

    def initialize(image, params = {})
    end

    def message
      'Exit'
    end

    def exit?
      true
    end
  end
end
