require './lib/convert_to_dots'

RSpec.describe ConvertToDots do

  it 'can instantiate ConvertToDots' do
    braille_printer = ConvertToDots.new
    expect(braille_printer).to be_instance_of(ConvertToDots)
  end






end
