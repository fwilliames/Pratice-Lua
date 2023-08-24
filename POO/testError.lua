local function readFile(filePath)
    local file = io.open(filePath,"r")
    local fileContent = file:read("a")
    return fileContent
    
end

local function readFileXpcall(filePath)
local sucess, result = xpcall(function ()
        local file = io.open(filePath,"r")
        local fileContent = file:read("a")
        return fileContent
    end,

    function(err)
        return "The file Does not Exist"
    end)
    return sucess,result
end

local filePaths = {
    "resources/example.json",
    "resources/example.nil"
}

--for _, filePath in pairs(filePaths) do
  --  local sucess, result = pcall(readFile, filePath) --pcall(funcao, parametro) protected call se der erro o programa continua
    --print(sucess,result)
--end

for _, filePath in pairs(filePaths) do
    local sucess, result = readFileXpcall(filePath) --pcall(funcao, parametro) protected call se der erro o programa continua
    print(sucess,result)
end

print("Sucesso")