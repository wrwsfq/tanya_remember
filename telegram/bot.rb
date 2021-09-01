require File.expand_path('../config/environment', __dir__)

require 'telegram/bot'

token = "1945514473:AAEhK3hrtQez0CuglbtQg40JHzR0KS2KCPk"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/add"
        bot.api.send_message(chat_id: message.chat.id, text: "Qq")
    when "/delete"

    when "/search"
    end
  end
end