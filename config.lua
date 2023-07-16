function module:GetTeamLogos(teamName)
    if (string.lower(teamName) == "connecticut") then
        return {
            City = "Connecticut",
            Name = "Huskies",
            Abbreviation = "CONN",
            HelmetTexture = "rbxassetid://14082618845",
            Logo = "rbxassetid://14082582244"
        }
    elseif (string.lower(teamName) == "indiana") then
        return {
            City = "Indiana",
            Name = "Hoosiers",
            Abbreviation = "IND",
            HelmetTexture = "rbxassetid://14082618845",
            Logo = "rbxassetid://14082582244"
        }
    end
end
