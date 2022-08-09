require './lib/convert_to_dots'

b_printer = ConvertToDots.new

file_read_data = File.open(ARGV[0], "r")
file_read = file_read_data.read
file_chr_length = file_read.each_char { |chr| "#{chr}" }.gsub("\n", "")
file_write = File.open(ARGV[1], "w")

puts "Created #{ARGV[1]} containing #{file_chr_length.length} characters"

def txt_into_string(file)
  new_string = ""
  file.each_char  { |chr| new_string.concat "#{chr}" }
  new_string
end

# if file_read.uniq.count == 2 && file_read.uniq.to_s == ("0." || ".0")
  # convert_to_english
# else
# require "pry"; binding.pry
  file_write.write(b_printer.organize(txt_into_string(file_read)))
