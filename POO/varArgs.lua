local function media(...) -- o parametro "..."" serve para receber parametros variaveis 
    local list = {...}
    local variasCoisas = table.unpack(list) -- para tirar os valores da tabela e agrupar o ... novamente
    local soma = 0

    for _,num in pairs(list) do
        soma = soma + num
    end
    
    return soma/#list
end

print(media(1,2,3,4,5,6))