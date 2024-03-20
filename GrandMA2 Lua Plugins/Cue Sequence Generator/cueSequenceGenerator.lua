function patchFixtures()
    -- Target universe for patching
    local universe = 1

    for i = 1, 12 do
        -- Replace fixtureID with your actual fixture ID(s)
        local fixtureID = i
        local patchCommand = string.format('Patch Fixture %d At Universe %d', fixtureID, universe)
        gma.cmd(patchCommand)
    end
    gma.feedback('Fixtures patched successfully.')
end

-- Function to create groups
function createGroups()
    -- Group A: Left
    gma.cmd('GroupCreate "GroupA"')
    
    -- Group B: Middle
    gma.cmd('GroupCreate "GroupB"')

    -- Group C: Right
    gma.cmd('GroupCreate "GroupC"')

    -- Add fixtures to groups
    for i = 1, 4 do
        gma.cmd(string.format('Group "GroupA" Add Fixture %d', i))
        gma.cmd(string.format('Group "GroupB" Add Fixture %d', i + 4))
        gma.cmd(string.format('Group "GroupC" Add Fixture %d', i + 8))
    end
end

-- Function to create color presets
function createColorPresets()
    local colors = {'Red', 'Orange', 'Yellow', 'Blue', 'Cyan', 'Purple', 'Pink', 'Green', 'White'}

    for i, color in ipairs(colors) do
        gma.cmd(string.format('Store %s "Color"', color))
    end
end

-- Function to create intensity presets
function createIntensityPresets()
    local intensities = {'Full', 'Medium', 'Off'}

    for i, intensity in ipairs(intensities) do
        gma.cmd(string.format('Store %s "Intensity"', intensity))
    end
end

-- Function to create gobo presets
function createGoboPresets()
    local gobos = {'Circles', 'Spots', 'Lines'}

    for i, gobo in ipairs(gobos) do
        gma.cmd(string.format('Store %s "Gobo"', gobo))
    end
end

-- Function to create FX presets
function createFxPresets()
    local fxPresets = {'Strobe', 'X-Axis Movement', 'Y-Axis Movement', 'X-Axis & Y-Axis Movement'}

    for _, group in ipairs({'GroupA', 'GroupB', 'GroupC'}) do
        for _, fxPreset in ipairs(fxPresets) do
            gma.cmd(string.format('Store %s %s "FX"', group, fxPreset))
        end
    end
end

-- Execute the functions
function main ()
    patchFixtures()
    createGroups()
    createColorPresets()
    createIntensityPresets()
    createGoboPresets()
    createFxPresets()

    gma.feedback('Plugin execution completed.')
end

return main