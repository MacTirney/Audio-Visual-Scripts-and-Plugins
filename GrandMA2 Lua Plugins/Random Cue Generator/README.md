# Random Cue Generator Lua Plugins

## About
**Version: 1.1**

* This plugin allows the user to make an endless number of randomly generated cues with a group of selected fixtures.

* This plugin helps to automate and cut down on the show file creation process for new users and shows.
    * Allowing the user to focus more on other more important tasks.

* This plugin is mostly used by users to create basic cues and cue ideas for an empty show file.

## How this Plugin works
**createRandomCues - Function**
* The primary function of the 'createRandomCues' function is to create a specified number of random cues for a specified number of fixtures. 
    * (These numbers are specified by the user).
    * In this scenario, the number of random cues being generated is 5, while the number of fixtures being used is 10.
* This function then randomly generates the following values for each fixture selected before saving them in an empty cue space.
    * Intensity
    * Color (Reds)
    * Color (Greens)
    * Color (Blues)
    * Pan
    * Tilt
* This function then releases the cue and creates another randomly generated cue.
* When the Plugin is done running it will provide feedback to the user stating if the randomly generated cues were created successfully.

**Notes about these Plugins**
* Make sure to adjust the numFixtures and numCues variables as needed.
* The user may also need to adjust the plugin based on the fixture types being used and the specific parameters the user wants to control.
* The user must also remember to adjust the fixtureIDs with their fixtureIDs, based on their setup.

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]().