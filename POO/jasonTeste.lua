local json = require "libs.json"
local inspect = require("libs.inspect")

local file = io.open("resources/example.json","r") -- comando para abrir arquivos no modo leitura
local fileContent = file and file:read("a")

local fileDecode = fileContent and json.decode(fileContent) or {}

print(inspect(fileDecode))

--print(json.encode({ 1, 2, 3, { x = 10 } })) -- Returns '[1,2,3,{"x":10}]'


print(json.decode(fileContent)) -- Returns { 1, 2, 3, { x = 10 } }

print(fileDecode.Dictionary.Dolphin)