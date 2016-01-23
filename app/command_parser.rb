class CommandParser
  PARSER = {
    'X' => {
      pattern: /^X$/,
      _class: Command::Exit
    },
    'S' => {
      pattern: /^S$/,
      _class: Command::ShowImage
    },
    'C' => {
      pattern: /^C$/,
      _class: Command::Clear
    },
    'I' => {
      pattern: /^I\ \d+\ \d+$/,
      _class: Command::NewImage
    },
    'L' => {
      pattern: /^L\ \d+\ \d+\ [A-Z]{1}$/,
      _class: Command::ColorPixel
    },
    'V' => {
      pattern: /^V\ \d+\ \d+\ \d+\ [A-Z]{1}$/,
      _class: Command::DrawVerticalSegment
    },
    'H' => {
      pattern: /^H\ \d+\ \d+\ \d+\ [A-Z]{1}$/,
      _class: Command::DrawHorizontalSegment
    },
    'F' => {
      pattern: /^F\ \d+\ \d+\ [A-Z]{1}$/,
      _class: Command::Fill
    }
  }

  def initialize(options = {})
    @image = options[:image]
  end

  def parse(input)
    command, params = split_input(input)
    parser = PARSER[command]
    if(!parser.nil? && input =~ parser[:pattern])
      parser[:_class].new(@image, params)
    else
      Command::Invalid.new
    end
  end

  private

  def split_input(input)
    _input = input.split(' ')
    [_input.first, _input[1..-1]]
  end
end
