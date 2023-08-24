local Creature = require("Creatures.Creature") 

local Animal = Creature:subclass("Animal") --definindo Animal como subclasse de creature

function Animal:initialize(newName)
    Creature.initialize(self, newName)
    
end

function Animal:isHostile()
    return false
    
end

return Animal