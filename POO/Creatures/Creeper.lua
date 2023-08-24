local Monster = require("Creatures.Monster")

local Creeper = Monster:subclass("Creeper")

function Creeper:initialize()
    Monster.initialize(self, "Creeper")
    self.health = 10
    self.maxHealth = 10

    
end

return Creeper