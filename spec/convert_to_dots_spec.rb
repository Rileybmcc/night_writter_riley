require './lib/convert_to_dots'

RSpec.describe ConvertToDots do

  it 'can instantiate ConvertToDots' do
    braille_printer = ConvertToDots.new
    expect(braille_printer).to be_instance_of(ConvertToDots)
  end

  it 'can translate string into braille arrays' do
    b_printer = ConvertToDots.new
    expect(b_printer.convert_this_text("hi")).to eq(
      [["0.","00",".."], [".0","0.",".."]])
  end

  it 'can turn array of braille into three separate lines' do
    b_printer = ConvertToDots.new
    expect(b_printer.organize("hi")).to eq("0..0\n000.\n....")
  end




end
