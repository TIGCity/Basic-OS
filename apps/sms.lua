local cin = fs.open("/settings/cin.txt", "r")
local thisnumber = cin.readAll()
print("Please type your name: ")
name = read()
print("What is the number you are texting?: ")
number2 = read()
print("NOTE: Currently the person you are texting will have to open the messanger at the same time as you to see your message.")
sleep(5)
number = "tigcity-"..name....number2..""
shell.run("enchatapi", name, number)
