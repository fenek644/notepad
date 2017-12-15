
class Link < Post
  def initia
    super
    @url = ""
  end

  def read_from_console
    puts "Адрес ссылки?"
    @url = STDIN.gets.strip

    puts "Описание ссылки?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")}\n\r\n\r"
    return [@url, @text, time_string]
  end
end