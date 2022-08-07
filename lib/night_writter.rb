file_read_data = File.open(ARGV[0], "r")
file_read = file_read_data.read

file_write = File.open(ARGV[1], "w")

puts "Created #{ARGV[1]} containing #{file_read.length} characters"
