local monsterName = "Creeper"
local monsterDesc = "Um mob raivoso."
local monsterAtk = 10
local monsterDef = 5
local monsterSpe = 4
local monsterInt = 6
local monsterSound = "TSSSSSSS"
local monsterSpawnHour = "Noturno"
local monsterItem = "Polvora"


local function getProguessBar(atribute)
    local pointBox = "#"
    local emptyPointBox = "?"
    local result = ""
    for i = 1, 10, 1 do
        if i <= atribute then
            result = result .. pointBox
        else
            result = result .. emptyPointBox
        end
    end
    return result
end

os.execute("chcp 65001")
os.execute("cls")

print("##################################")
print("-> " .. monsterName)
print("-->", monsterDesc)
print("Som: " .. monsterSound)
print("Horario de spawn: " .. monsterSpawnHour)
print("Item dropavel: " .. monsterItem)
print("--------------")
print("Ataque: ", getProguessBar(monsterAtk))
print("Defesa: ", getProguessBar(monsterDef))
print("Velocidade: ", getProguessBar(monsterSpe))
print("Inteligencia: ", getProguessBar(monsterInt))
print("--------------")
print("##################################")