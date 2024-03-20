function turnOffFixtures(groupNumber)
    local group = gma.show.getgroup(groupNumber)

    if group then
        gma.feedback('Turning off fixtures for Group ' .. groupNumber)
        gma.cmd('Group ' .. group .. ' At 0')
    else
        gma.feedback('Group ' .. groupNumber .. ' not found.')
    end
end

return turnOffFixtures(1)