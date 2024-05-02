# LampOn & LampOff Lua Plugins

## About
**Version: 1.1**

* The LampOn plugin alters the Intensity of a group of fixtures to 'Full' (100%).

* The LampOff plugin alters the Intensity of a group of fixtures to '0' (0%).

* These plugins are mostly used by users to turn on or off all of their fixtures in a GrandMA2 show file.

## How this Plugin works
**turnOnFixtures - Function**
* The primary function of the 'turnOnFixtures' function is to grab a group of fixtures and alter the Intensity of the selected group to 'Full' (100% Intensity).
* This will result in all of the fixtures in the select group being 'On'.

**turnOffFixtures - Function**
* The primary function of the 'turnOffFixtures' function is to grab a group of fixtures and alter the Intensity of the selected group to '0' (0% Intensity).
* This will result in all of the fixtures in the select group being 'Off'.

**Notes about these Plugins**
* When a user calls the function 'turnOnFixtures' they have to specify which group number they want altered. 
    * If they don't specify which group number they want altered then the plugin will provide the user with feedback stating 'Group (number) not found.'
* When a user calls the function 'turnOffFixtures' they have to specify which group number they want altered. 
    * If they don't specify which group number they want altered then the plugin will provide the user with feedback stating 'Group (number) not found.'

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]().