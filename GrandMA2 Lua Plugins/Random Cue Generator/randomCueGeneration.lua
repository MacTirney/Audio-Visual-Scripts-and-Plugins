-- Function to create random cues for 10 fixtures
function createRandomCues()
    -- Number of fixtures
    local numFixtures = 10
    -- Number of random cues to create
    local numCues = 5

    for cueNumber = 1, numCues do
        gma.cmd(string.format('Store Cue %d', cueNumber))

        for fixtureNumber = 1, numFixtures do
            -- Replace fixtureNumber with your fixture ID(s)
            local fixtureID = 1000 + fixtureNumber
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
    end

    gma.feedback('Random cues created successfully!')
end

return createRandomCues