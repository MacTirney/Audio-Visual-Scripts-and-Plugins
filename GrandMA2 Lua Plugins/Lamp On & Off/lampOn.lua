function turnOnFixtures(groupNumber)
    local group = gma.show.getgroup(groupNumber)

    if group then
        gma.feedback('Turning on fixtures for Group ' .. groupNumber)
        gma.cmd('Group ' .. group .. ' At Full')
    else
        gma.feedback('Group ' .. groupNumber .. ' not found.')
    end
end

return turnOnFixtures(1)
