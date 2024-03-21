# Check Cue Existence

## About
Version: 1.1

This plugin tells the user if a cue exists in an executor in the given GrandMA2 show file.

## How this Plugin works
'doesExist' Function
* The primary function of this Lua Plugin 'doesExist' takes in one parameter (objectName).
* It then grabs the handle of the passed in parameter.
* Then using a conditional statement it checks to see if the object exists.

'main' Function
* When running this Lua plugin, the 'main' function will grab the 'SELECTEDEXEC' value, it will then prompt the user to input a Cue Number.
* Then using the doesExist function it will check to see if the object (cue) exists in the executor.
* The Lua Plugin then provides feedback to the user informing them if the object (cue) exists or if it doesn't exist.

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]()


Individual Snippets Read Me
- How this plugin works
- Purpose of the plugin
- How to use the plugin / files
	- Download & importing steps
- Which variables need to be edited in the code for personal use
    - Which variables can be edited