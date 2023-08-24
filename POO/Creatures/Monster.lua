local Creature = require("Creatures.Creature") 

local Monster = Creature:subclass("Monster") --definindo monster como subclasse de creature

function Monster:initialize(newName)
    Creature.initialize(self, newName)
    
end

function Monster:isHostile()
    return true
    
end

return Monster