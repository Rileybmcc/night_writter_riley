require './lib/convert_to_english'

eng_printer = ConvertToEnglish.new

file_read_data = File.open(ARGV[0], "r")
file_read = file_read_data.read
file_chr_length = file_read.each_char { |chr| "#{chr}" }.gsub("\n", "")

file_write = File.open(ARGV[1], "w")

puts "Created #{ARGV[1]} containing #{file_chr_length.length / 6} characters"

file_write.write(eng_printer.to_eng(file_read_data))
