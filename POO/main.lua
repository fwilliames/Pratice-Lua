local Creeper = require("Creatures.Creeper")
local Sheep = require("creatures.sheep")
local ansicolorsx = require 'libs.ansicolorsx'
local utils = require("libs.utils")

utils.enableUtf8()



local myCreeper = Creeper:new()
myCreeper.health = 5
local mySheep = Sheep:new()
mySheep.health = 2

myCreeper:printInfo()
mySheep:printInfo()
