require './lib/convert_to_dots'
require './lib/convert_to_english'

b_printer = ConvertToDots.new
eng_printer = ConvertToEnglish.new

file_read_data = File.open(ARGV[0], "r")
file_read = file_read_data.read
file_chr_length = file_read.each_char { |chr| "#{chr}" }.gsub("\n", "")
indiv_chars = []

file_write = File.open(ARGV[1], "w")


file_chr_length = file_read.each_char { |chr| indiv_chars << "#{chr}" }

if indiv_chars.uniq.count == 2 && indiv_chars.uniq.join == "0."" || "".0"
  puts "Created #{ARGV[1]} containing #{file_chr_length.length} characters"
  file_write.write(eng_printer.to_eng(file_read))
else
  puts "Created #{ARGV[1]} containing #{file_chr_length.length / 6} characters"
  file_write.write(b_printer.organize(file_read))
end
