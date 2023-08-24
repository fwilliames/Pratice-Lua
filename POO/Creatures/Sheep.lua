local Animal = require("Creatures.Animal")

local Sheep = Animal:subclass("Sheep")

function Sheep:initialize()
    Animal.initialize(self, "Sheep")
    self.health = 4
    self.maxHealth = 4
    
end

return Sheep