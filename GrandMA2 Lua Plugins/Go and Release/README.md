# Go and Release Lua Plugin

## About
**Version: 1.1**

* This plugin is for triggering a Go & Release Command in the GrandMA2 software.

* It helps to quickly create looks that a user can trigger for a quick go and release.

* This plugin is mostly used by users to create a quick one-off look or to quickly edit a look mid-show.

## How this Plugin works
**goReleaseSingleCue - Function**
* The primary function of the 'goReleaseSingleCue' function is to prompt the user for an Executor number, an Executor name, and basic Fixture values (Intensity, Fade In time, and Fade out time).
* This function then selects the desired Executor and sets the following Fixture selections.
    * Sets the Dimmer level based on the user input.
    * Sets the Fade In time based on the user input.
* This function then stores these values in the Executor slot and sets the following Fixture selection.
    * Sets the Fade Out time based on the user input.
* The function then labels the selected Executor with a name based on the user's input and then triggers the saved values before releasing them after a predetermined time by the user.

**Notes about this Plugin**
* This function can target additional Fixture selections based on the specific fixture(s) used by the user.


## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]().