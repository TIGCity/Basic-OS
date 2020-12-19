os.loadAPI("basicos/apis/apps")
os.loadAPI("basicos/apis/menu")

function notesApp()
	print("What is the name of the note you want to open/create: ")
	noteFile1 = read()
  noteFile = noteFile1 + ".txt"
  shell.run("edit", noteFile)
end
 
function updater()
	print("Downloading updates and rebooting...")
	fs.delete("startup")
	shell.run("pastebin", "get", "xzzsTZXQ", "startup")
	os.reboot()
end

local m = menu.new()

m:addFunc("note", notesApp)
m:addFunc("snake", shell.run, "worm")
m:addFunc("adv", shell.run, "adventure")
m:addFunc("sd", shell.run, "shutdown")
m:addFunc("r", shell.run, "reboot")
m:addFunc("u", updater)
m:addFunc("msgs", shell.run, "basicos/apps/sms.lua")

m:addScreen("main",
[[
Minerizon  -  Basic OS 1.0.0A

Messages @msgs
Games @games
Write A Note @note
Comming Soon: My Minerizon @cs
Comming Soon: Settings @cs
Power @power
Comming Soon: Basic OS AppStore @cs
]])

m:addScreen("games",
[[
Minerizon  -  Basic OS 1.0.0A

      Games
      
      Play Snake @snake
      Play Adventure @adv
      
      Home @main
]])

m:addScreen("cs",
[[
Minerizon  -  Basic OS 1.0.0A

      Comming Soon!
      
      This feature on this Basic OS Device is comming soon.
      Please update your device regularly.
      
      Home @main
]])

m:addScreen("power",
[[
Minerizon  -  Basic OS 1.0.0A

      Power
      
      Shutdown @sd
      Reboot @r
      Update @u
      
      Home @main
]])


local f = m:displayScreen("main")
if f ~= nil then
  f()
end
