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





end
