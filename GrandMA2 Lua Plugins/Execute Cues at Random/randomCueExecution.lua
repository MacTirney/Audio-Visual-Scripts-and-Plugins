function createCues()
    -- Number of fixtures
    local numFixtures = 10

    -- Number of cues to create
    local numCues = 6

    for cueNumber = 1, numCues do
        local success, error_message = pcall(function()
            gma.cmd(string.format('Store Cue %d', cueNumber))

            for fixtureNumber = 1, numFixtures do
                -- Replace fixtureNumber with your fixture ID(s)
                local fixtureID = 300 + fixtureNumber
                local intensity = math.random(0, 100)
                local red = math.random(0, 255)
                local green = math.random(0, 255)
                local blue = math.random(0, 255)
                local pan = math.random(-540, 540)
                local tilt = math.random(-270, 270)

                gma.cmd(string.format('Fixture %d At %d', fixtureID, intensity))
                gma.cmd(string.format('SetFixture %d RGB %d,%d,%d', fixtureID, red, green, blue))
                gma.cmd(string.format('SetFixture %d At %d,%d', fixtureID, pan, tilt))
            end

            gma.cmd('Release Cue')
        end)

        if not success then
            gma.feedback('Error creating cues: ' .. error_message)
            return
        end
    end

    gma.feedback('Cues created successfully!')
end

-- Function to run cues in random order with interval and fade in/out
function runRandomCues()
    -- Number of cues
    local numCues = 6

    -- Interval in seconds
    local interval = 5

    -- Fade in/out time in seconds
    local fadeTime = 1

    for i = 1, numCues do
        local success, error_message = pcall(function()
            local randomCue = math.random(1, numCues)
            gma.cmd(string.format('Go Cue %d /f %d /o /t %d', randomCue, fadeTime, fadeTime))
            -- Convert seconds to milliseconds
            gma.sleep(interval * 1000)
        end)

        if not success then
            gma.feedback('Error running random cues: ' .. error_message)
            return
        end
    end

    gma.feedback('Random cues executed successfully!')
end

function main()
    createCues()
    runRandomCues()
    
    gma.feedback('Plugin execution completed.')
end

return main