# encoding: utf-8
#  XXX


# XXX
#
 require_relative "lib/decoder.rb"
 require_relative "post.rb"
 require_relative "link.rb"
 require_relative "memo.rb"
 require_relative "task.rb"

puts "Привет! Я твой блокнот!"
puts "Что хотите записать в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size do

  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.strip.to_i
end

entry = Post.create choice

entry.read_from_console

entry.save

puts "Ура! Запись сохранена!"
