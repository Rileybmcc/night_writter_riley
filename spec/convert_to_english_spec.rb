require './lib/convert_to_english'
# require './test'

RSpec.describe ConvertToEnglish do

  it 'can instantiate ConvertToEnglish' do
    eng_printer = ConvertToEnglish.new
    expect(eng_printer).to be_instance_of(ConvertToEnglish)
  end

  it 'can create hash of txt lines' do
    eng_printer = ConvertToEnglish.new
    file_data = File.open('./test.txt', "r")
    # allow(eng_printer).to receive(eng_printer.file_by_line(file_data)).and_return(["hello", "peace", "i'm", " world", " out", " napping"])
    expect(eng_printer.file_by_line(file_data)).to eq(["hello", "peace", "i'm", " world", " out", " napping"])
  end


end
