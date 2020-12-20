print("Type the chat id to connect to: ")
chatId2 = read()
print("Type your name: ")
name = read()
chatId = "tigcity-"..chatId2..""
shell.run("basicos/apps/sms/enchatapi", name, chatId)
