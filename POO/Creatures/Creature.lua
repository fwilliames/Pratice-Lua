local class = require("libs.middleclass")
local ansicolorsx = require("libs.ansicolorsx")
local utils = require("libs.utils")

local Creature = class("Creature")

function Creature:initialize(newName)
    self.name = newName
    self.health = 0
    self.maxHealth = 0
end

function Creature:getName()
    return self.name
    
end

function Creature:isHostile()
    end

function Creature:getHealth()
    return self.health
    
end

function Creature:getMaxHealth()
    return self.maxHealth
    
end

function Creature:isHealthFull()
    return self.health >= self.maxHealth
    
end

function Creature:isAlive()
    return self.health < 0
    
end
function Creature:isDead()
    return not self:isAlive()
    
end

function Creature:printInfo()
    local hostile = self:isHostile()

    print(ansicolorsx(
        string.format(
            "%s     %s",
            "%{white underline}" .. self:getName() .. "%{reset}",
            hostile and "%{red}(hostil)" or "%{green}(Docil)"
            )
        )
    )
    local healhAttribute = math.floor((self.health / self.maxHealth) * 10 + 0.5)
    print(ansicolorsx("health: " .. utils.getProgressBar(healhAttribute)))
    print()

    
end

return Creature