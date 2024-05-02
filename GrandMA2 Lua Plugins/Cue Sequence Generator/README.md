# Cue Sequence Generator Lua Plugin

## About
**Version: 1.1**

* This plugin helps the user automate the patching of a specified amount of fixtures to a given universe. 

* It then takes these fixtures and creates pre-built presets for them. 

* These presets that are pre-built include groups, colors, intensity, gobos, and FX.

* This plugin helps to automate and cut down on the show file setup for new users and shows.

## How this Plugin works - Functions
**patchFixtures - Function**
* The primary function of this 'patchFixtures' function is to target a specific universe (outlined by the user) and patch a select number of fixtures (outlined by the user) to that universe.
    * In this scenario, it is Universe 1 and 12 fixtures are being patched
* This function loops through the select number of fixtures utilizing their specific IDs to patch them to the designated universe.
* This function then returns a message to the user informing them that the fixtures were patched successfully.

**createGroups - Function**
* The primary function of this 'createGroups' function is to create three groups (A: 'Left', B: 'Middle', C: 'Right') and add a specific amount of fixtures into each group.
    * In this case, it is 4 for each group.

**createColorPresets - Function**
* The primary function of this 'createColorPresets' function is to create a set number of color presets for the given specified fixtures.
    * In this case, it is 9 ('Red', 'Orange', 'Yellow', 'Blue', 'Cyan', 'Purple', 'Pink', 'Green', 'White').

**createIntensityPresets - Function**
* The primary function of this 'createIntensityPresets' function is to create a set number of intensity presets for the given specified fixtures.
    * In this case, it is 3 ('Full', 'Medium', 'Off')

**createGoboPresets - Function**
* The primary function of this 'createGoboPresets' function is to create a set number of gobo presets for the given specified fixtures.
    * In this case, it is 3 ('Circles', 'Spots', 'Lines')

**createFxPresets - Function**
* The primary function of this 'createFXPresets' function is to create a set number of FX presets for each group of fixtures.
    * In this case, it is 4 FX presets ('Strobe', 'X-Axis Movement', 'Y-Axis Movement', 'X-Axis & Y-Axis Movement') for groups (A: 'Left', B: 'Middle', and C: 'Right').

**main - Function**
* Executes each built-out function in sequential order.
* Provides feedback to the user informing them that the plugin execution was completed.

**Notes about this Plugin**
* Replace the universe in the 'patchFixtures' function with the universe you are patching to.
* Replace the fixture IDs in the 'patchFixtures' function with your actual fixture IDs. 

## How to utilize this Plugin
If you want to download these plugins please refer to the main [GrandMA2 Lua Plugin document]().

## A Note to the User
If you have any questions about this plugin, please contact me at [mactirneyav@gmail.com]().