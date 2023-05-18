# vehicle-blacklist

This blacklist is a little different than most, instead of outright just deleteing the vehicle it will simply remove the player from the vehicle naturally.

There is an option to set individual vehicles to delete for the more important vehicles

There is an option to set ace permissions for vehicles individual, this will bypass the vehicle checks and allow the player to use it


Configuration Settings

Message - This is where you set the message you want to be displayed on the players screen
![image](https://github.com/GrandpaRex/vehicle-blacklist/assets/77104671/7bf89503-cd51-43de-a0cb-4f8feed1bad9)

Blocked - This is where you make the list of blacklisted vehicles
  hash - This is REQUIRED, it is the hash of the vehicle
  ace - This is OPTIONAL, this is the ace permission the player would need to bypass the blacklist
  delete - This is OPTIONAL, this is the setting you would set to true if you want the vehicle to be deleted instead of just kicking the player            out
