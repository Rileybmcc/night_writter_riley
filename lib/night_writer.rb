require './lib/convert_to_dots'

b_printer = ConvertToDots.new

file_read_data = File.open(ARGV[0], "r")
file_read = file_read_data.read

file_write = File.open(ARGV[1], "w")

puts "Created #{ARGV[1]} containing #{file_read.length} characters"


def txt_into_string(file)
  new_string = ""
  file.each_char  { |chr| new_string.concat "chr" }
  new_string
end

file_write.write(b_printer.organize(txt_into_string(file_read)))
