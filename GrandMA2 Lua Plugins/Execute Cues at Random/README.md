# Execute Cues at Random Lua Plugin

## About
**Version: 1.1**

* This plugin helps to automate and cut down on the show file creation process for new users and shows.

* It allows the user to make an endless number of cues with a group of selected fixtures.

* It then takes those built-out cues and executes them in a random order for the user.

* This allows the user to focus more on other tasks since it has reduced the cue-creation process by more than 50%.

## How this Plugin works - Functions
**createCues - Function**
* The primary function of this 'createCues' function is to target a specific number of fixtures, (outlined by the user) to create a specific number (outlined by the user) of 'random' pre-built cues.
    * In this scenario, the number of fixtures being utilized is 10 and the number of cues being created is 6.
* This function loops through each cueNumber (i.e. 1,2,3) storing each 'pre-built' cue to a cueNumber (i.e. 1,2,3) in the GrandMA2 software. 
    * For each 'pre-built' cue this function uses a nested loop, to loop through each fixture. 
        * It assigns it a random intensity value, a random color value, and a random position value.
        * It also assigns it a fixtureID however this can be replaced by the user (with their specified fixtureID's.).
* This function then releases the cue once it is done building it out.
* This function then provides feedback to the user indicating if the function execution was successful or if an error had occurred.

**runRandomCues - Function**
* The primary function of this 'runRandomCues' function is to take the 'pre-built' cues and run them in random order at a set interval (specified by the user) with a set fade time (specified by the user).
    * In this scenario, the interval is 5 seconds and the fade time is 1 second.
* This function loops through the stored cues and then executes a random cue.
* This function then provides feedback to the user indicating if the function execution was successful or if an error had occurred.

**main - Function**
* Executes each built-out function in sequential order.
* Provides feedback to the user informing them that the plugin execution was completed.

**Notes about this Plugin**
* Replace the numFixtures variable in the 'createCues' function with the actual number of fixtures you are using for this plugin.
* Replace the numCues variable in the 'createCues' function with the actual number of cues you plan to make with your specified number of fixtures for this plugin.
* Replace the fixtureID variable in the 'createCues' function with your already specified fixture IDs if you have them.
* Replace the interval variable in the 'runRandomCues' function with your actual interval (in seconds).
* Replace the fadeTime variable in the 'runRandomCues' function with your actual fadeTime (in seconds).

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]().