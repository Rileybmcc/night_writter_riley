require './lib/convert_to_english'

RSpec.describe ConvertToEnglish do

  it 'can instantiate ConvertToEnglish' do
    eng_printer = ConvertToEnglish.new
    expect(eng_printer).to be_instance_of(ConvertToEnglish)
  end


end
