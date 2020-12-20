os.loadAPI("basicos/apis/menu")

local contactsFile = fs.open("basicos/contacts/contactfile.txt", "w")
local contacts = textutils.unserialize(contactsFile.readAll())

local m = menu.new()

m:addFunc("home", shell.run, "basicos/home.lua")
m:addFunc("lookup", lookupContact)
m:addFunc("add", addContact)

m:addScreen("main",
[[
Minerizon  -  Basic OS 1.0.0A

    Contacts
    
    Look up contact @lookup
    Add contact @add
    
    Home @home
]])

function lookupContact()
  term.clear()
  print("Minerizon  -  Basic OS 1.0.0A")
  print()
  print("    Contacts")
  print()
  print("   Please type the name of the person or")
  print("   group your trying to lookup: ")
  local lookupName = read()
  term.clear()
  print("Looking up your contact...")
  time.sleep(3)
  local lookedupContact = contacts[lookupName]
  term.clear()
  print("Minerizon  -  Basic OS 1.0.0A")
  print()
  print("    Contacts")
  print()
  print("   The chat ID for the name you looked up is: ")
  print("   "..lookedupContact.."")
  print()
  print("   Press any key to go back.")
  os.pullEvent("key")
end

function addContact()
  term.clear()
  print("Minerizon  -  Basic OS 1.0.0A")
  print()
  print("    Contacts")
  print()
  print("   Please type the name of the person or")
  print("   group your trying add to your contact book:")
  
  local name = read()
  term.clear()
  
  print("Minerizon  -  Basic OS 1.0.0A")
  print()
  print("    Contacts")
  print()
  print("   Please type the chat ID of the person or")
  print("   group your trying add to your contacts: ")
  local chatId = read()

  term.clear()
  print("Adding contact..")
  contacts[name] = chatId
  local contactsWriten = textutils.serialize(contacts)
  contactsFile.close()
  fs.delete("basicos/contacts/contactfile.txt")
  local contactsFile = fs.open("basicos/contacts/contactfile.txt", "w")
  contactsFile.write(contactsWriten)
  term.clear()
  
  print("Minerizon  -  Basic OS 1.0.0A")
  print()
  print("    Contacts")
  print()
  print("   The contact was added successfully")
  print("   Press any key to go back.")
  os.pullEvent("key")
  shell.run("basicos/apps/contacts.lua")
end

