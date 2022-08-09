require './lib/convert_to_english'
# require './test'

RSpec.describe ConvertToEnglish do

  xit 'can instantiate ConvertToEnglish' do
    eng_printer = ConvertToEnglish.new
    expect(eng_printer).to be_instance_of(ConvertToEnglish)
  end

  xit 'can create hash of txt lines' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test.txt', "r")
    answer = ["hello", "peace", "im", " world", " out", " napping"]
    # allow(eng_printer).to receive(eng_printer.file_by_line(file_data)).and_return(answer)
    expect(eng_printer.file_by_line(file_data)).to eq(["hello", "peace", "im", " world", " out", " napping"])
  end

  xit 'can create hash of txt lines' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test.txt', "r")
    expect(eng_printer.three_lines(file_data)).to eq(["hello world", "peace out", "im napping"])
  end

  xit 'can create braille hashes before convertion' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test_braille.txt', "r")
    expect(eng_printer.convert_setup(file_data)).to eq([["0.","00",".."], [".0","0.",".."]])
  end

  xit 'can convert braille to english' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test_braille.txt', "r")
    expect(eng_printer.to_eng(file_data)).to eq("hi")
  end

  it 'can convert braille to english including spaces' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test_braille1.txt', "r")
    expect(eng_printer.to_eng(file_data)).to eq("howdy there yall, how's it going")
  end

  xit 'can split string into lines of 80' do
    eng_printer = ConvertToEnglish.new
    string = "llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll"
    expect(eng_printer.line_management(string)).to eq(
      "llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll\nll")
  end

end
