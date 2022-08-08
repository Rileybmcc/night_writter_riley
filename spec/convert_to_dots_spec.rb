require './lib/convert_to_dots'

RSpec.describe ConvertToDots do

  it 'can instantiate ConvertToDots' do
    braille_printer = ConvertToDots.new
    expect(braille_printer).to be_instance_of(ConvertToDots)
  end

  it 'can translate string into braille arrays' do
    b_printer = ConvertToDots.new
    expect(b_printer.convert_this_text("hi")).to eq([["0.","00",".."], [".0","0.",".."]])
  end


end
