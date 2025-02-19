#!/usr/bin/env ruby

require 'io/console'

# regex animation
def regex_animation
  patterns = ["/[a-zA-Z]+/", "/[0-9]+/", "/\s/", "/[!@#\$%\^&\*\(\)]+/"]
  5.times do
    print "\rProcessing #{patterns.sample}..."
    sleep(0.2)
  end
  print "\r" + " " * 30 + "\r"
end

# Convert text to ASCII
def text_to_ascii(text)
  regex_animation
  text.chars.map { |char| char.ord }.join(" ")
end

# Convert ASCII back to text
def ascii_to_text(ascii_str)
  regex_animation
  ascii_str.split.map { |num| num.to_i.chr }.join
end

puts "ASCII Converter"
puts "[1] Convert Text to ASCII"
puts "[2] Convert ASCII to Text"
print "Choose an option: "
choice = gets.chomp.to_i

if choice == 1
  print "Enter text: "
  text = gets.chomp
  puts "ASCII: #{text_to_ascii(text)}"
elsif choice == 2
  print "Enter ASCII values (space-separated): "
  ascii_str = gets.chomp
  puts "Text: #{ascii_to_text(ascii_str)}"
else
  puts "Invalid option."
end
