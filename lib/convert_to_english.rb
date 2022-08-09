require './lib/translator'

class ConvertToEnglish
  include Translator

  def file_by_line(data)
    line_array = []
    File.readlines(data).each do |line|
      line_array << "#{line}"
    end
    line_array.map { |line| line.delete("\n") }
  end

  def three_lines(info)
    final_array = ["", "", ""]
    file_by_line(info).each_with_index do | line, index|
      final_array[0].concat line if index % 3 == 0
      final_array[1].concat line if index % 3 == 1
      final_array[2].concat line if index % 3 == 2
    end
    final_array
  end

  def convert_setup(file)
    final_prep =[]
    data = three_lines(file)
    (data[0].length / 2).times do |index|
      final_prep << [data[0][(0 + (2 * index))..(1 + (2 * index))],
                    data[1][(0 + (2 * index))..(1 + (2 * index))],
                      data[2][(0 + (2 * index))..(1 + (2 * index))]]
    end
    final_prep
  end

  def to_eng(input_string)
    lett_arrays = convert_setup(input_string)
    final_message = lett_arrays.map {
      |chr| braille_hash.keys.select { |key|braille_hash[key] == chr } }
    line_management(final_message.flatten.join)
  end

  def line_management(string)
    formatted_string = ""
    loop_num = (string.length.to_f / 80).ceil
    loop_num.times do |index|
      formatted_string.concat string[(0 + index*80)..(79 + index*80)]
      formatted_string.concat "\n" if index != loop_num - 1
    end
    formatted_string
  end

end
