-- Apps API V1.0.0
-- Stock Apps
-- basicos/apis/apps

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