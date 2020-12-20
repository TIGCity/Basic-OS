print("Installing the latest version of Basic-OS...")
time.sleep(5)
shell.run("wget https://tigcity.github.io/Basic-OS/BasicOS.lua startup")
print("Downloaded the main os file.")
shell.run("mkdir apps/sms")
shell.run("wget https://tigcity.github.io/Basic-OS/apps/sms/sms.lua basicos/apps/sms/sms.lua")
shell.run("wget https://tigcity.github.io/Basic-OS/apps/sms/enchatapi.lua basicos/apps/sms/enchatapi.lua")
time.sleep(4)
print("Downloaded apps.")
shell.run("wget https://tigcity.github.io/Basic-OS/apis/menu.lua basicos/apis/menu")
shell.run("wget https://tigcity.github.io/Basic-OS/apis/json.lua basicos/apis/json.lua")
shell.run("wget https://tigcity.github.io/Basic-OS/apis/apps.lua basicos/apis/apps.lua")
time.sleep(3)
print("Apis downloaded")
print("Finishing up...")
time.sleep(4)
os.reboot()