function getLastObject (ma2ObjectType, rangeStart, rangeEnd)
    -- Initialize a local variable to keep track of the index of the last object found
    local lastIndex = 0

    -- Iterate over the specified range of indices
    for i = rangeStart, rangeEnd do
        -- Form the object name using the provided object type and current index
        local ma2ObjectName = ma2ObjectType .. i

        -- Get the handle of the object using .getobj.handle()
        local handle = gma.show.getobj.handle(ma2ObjectName)

        -- Check if the object exists
        if handle ~= nil then
            -- Update the lastIndex if the object exists
            lastIndex = i
        end
    end

    return lastIndex
end

function main ()
    -- Prompt the user for input: type of object, target executor, range start, and range end 
    local ma2ObjectType = gma.textinput('Enter object type', 'Effect')
    local targetExecutor = gma.textinput('Enter Executor', 'Executor 1.201')
    local rangeStart = tonumber(gma.textinput('Enter range start','1'))
    local rangeEnd = tonumber(gma.textinput('Enter range end','100'))

    -- Call the getLastObject function to get the index of the last object
    local lastIndex = getLastObject(ma2ObjectType, rangeStart, rangeEnd)
    gma.feedback('The last item of object type ' .. ma2ObjectType .. ' has the index ' .. lastIndex .. ' in the range [' .. rangeStart .. ', ' .. rangeEnd .. ']')

    -- Calculate the index of the last cue for the specified target executor
    local targetExecLastCueIndex = getLastObject(targetExecutor .. ' Cue ', 1, 1000)
end

return main 