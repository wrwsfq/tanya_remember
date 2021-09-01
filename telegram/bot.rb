require File.expand_path('../config/environment', __dir__)

require 'telegram/bot'

token = "1945514473:AAEhK3hrtQez0CuglbtQg40JHzR0KS2KCPk"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "Hello"
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, Tanya. How are u?")

    when "Bad"
        bot.api.send_photo(chat_id: message.chat.id, photo: "AgACAgIAAxkBAAMXYS_OGgIVQ09UPKlfHjr2daeROtMAApi1MRt5_4BJKuD1zPwB5v8BAAMCAAN4AAMgBA") 
        
    when "Nice"   
        bot.api.send_message(chat_id: message.chat.id, text: "😘")
        
    when "Image"
        bot.api.send_photo(chat_id: message.chat.id, photo: "http://lorempixel.com/800/500/")
    end
  end
end