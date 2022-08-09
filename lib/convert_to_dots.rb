require './lib/translator'

class ConvertToDots
  include Translator

  def convert_this_text(input_string)
    new_message = []
    runon_string = input_string.downcase.delete(" ")
    wasd = runon_string.each_char { |chr| new_message << braille_hash[chr] }
    new_message
  end

  def organize(input_string)
    letters = convert_this_text(input_string)
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
