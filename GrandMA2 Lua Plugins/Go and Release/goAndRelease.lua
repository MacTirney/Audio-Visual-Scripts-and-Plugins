function goReleaseSingleCue ()
    -- Prompt user for input: executor number, executor label, dimmer/intensity, fade in, fade out
    local desiredExecNum = gma.textinput('Enter the: Desired Executor Number', 'currently_selected')
    local desiredExecLabel = gma.textinput('Enter the: Desired Executor Label', 'Go Release Bump')
    local dimLevel = gma.textinput('Dimmer or Intensity', '100')
    local fadeIn = gma.textinput('Fade In', '0')
    local fadeOut = gma.textinput('Fade Out', '10')

    -- If the executor number is specified, select that executor
    if desiredExecNum ~= 'currently_selected' then
        gma.cmd('Select Executor ' .. desiredExecNum)
    end

    -- Set dimmer level and fade in time for the cue
    gma.cmd('At ' .. dimLevel .. ' Fade ' .. fadeIn)

    -- Store the cue
    gma.cmd('Store /nc')

    -- Set the off time for the executor (fade out time)
    gma.cmd('Assign Executor /OffTime=' .. fadeOut)

    -- Label the selected executor with the specified label
    gma.cmd('Label $SELECTEDEXEC ' .. desiredExecLabel .. "")

end

return goReleaseSingleCue