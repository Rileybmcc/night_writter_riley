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



end
