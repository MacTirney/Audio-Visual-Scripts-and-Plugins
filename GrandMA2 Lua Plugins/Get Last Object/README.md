# Get Last Object Lua Plugin

## About
Version: 1.1

* This plugin is designed to find the index of the last object of a specified type within a specified range in a GrandMA2 lighting control system. 

* It prompts the user for inputs, calls a function to perform the execution, and then provides feedback with the result.

* This plugin is mostly used by users to find the last cue number in a range of macros, sequences, presets, etc.

## How this Plugin works
'getLastObject' Function
* The primary function of this 'getLastObject' function is to find and returns the index of the last object of a specified type within the given range.
* This function takes in (3) arguments ...
    * ma2ObjectType - This the type object that you want to find the last index for.
    * rangeStart - Start index of the range where the script will search for the last object.
    * rangeEnd - End index of the range where the script will search for the last object.
* This function loops through the specified range (rangeStart to rangeEnd), checks if an object with a particular name exists (constructed by concatenating ma2ObjectType with the loop index i), and if so, updates lastIndex to the current index i. 
* This function then returns the lastIndex variable.

'main' Function
* It prompts the user to input the type of object (ma2ObjectType), the starting index of the range (rangeStart), and the ending index of the range (rangeEnd).
    * It also prompts the user to input the executor (targetExecutor) it is searching in.
* It then calls the getLastObject function with the provided arguments and stores the result in lastIndex.
* It displays feedback to the user with information about the last object's index and the specified range.

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]()