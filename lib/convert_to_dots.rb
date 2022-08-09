require './lib/translator'

class ConvertToDots
  include Translator

  def txt_into_string(file)
    new_string = ""
    file.each_char  { |chr| new_string.concat "#{chr}" }
    new_string
  end

  def convert_this_text(input)
    readable_file = txt_into_string(input)
    new_message = []
    runon_string = readable_file.downcase#.delete(" ")
    wasd = runon_string.each_char { |chr| new_message << braille_hash[chr] }
    new_message
  end

  def to_br(input_string)
    letters = convert_this_text(input_string).select{ |letter| letter != nil }
    new_format = ""
    num_lines = (letters.count.to_f / 40).ceil
    num_lines.times do |index|
      row_a = letters[(0 + (40 * index))..(39+ (40 * index))].map { |letter| letter[0] }
      row_b = letters[(0 + (40 * index))..(39+ (40 * index))].map { |letter| letter[1] }
      row_c = letters[(0 + (40 * index))..(39+ (40 * index))].map { |letter| letter[2] }
      new_format.concat row_a.join.concat "\n".concat row_b.join.concat "\n".concat row_c.join
      new_format.concat "\n" if num_lines != index + 1
    end
    new_format
  end


end
