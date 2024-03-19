function doesExist(objectName)
    -- Get the handle of the specified object
    local handle = gma.show.getobj.handle(objectName)

    -- Check if the object exists (the handle is a value other than nil) and return true, otherwise return false
    if handle ~= nil then
        return true
    else
        return false
    end
end

function main ()
    -- Get the currently selected executor
    local exec = gma.show.getvar('SELECTEDEXEC')

    -- Prompt the user for the cue number
    local cueNo = gma.textinput('Cue No.', '1')

    -- Check if the specified cue exists for the selected executor
    local doesCueExist = doesExist('Executor ' .. exec .. ' Cue ' .. cueNo)

    -- Tell the user whether the cue exists or not
    if doesCueExist then
        gma.feedback('True')
    else
        gma.feedback('False')
    end
end

return main