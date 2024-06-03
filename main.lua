local monsterName = "Creeper"
local monsterDesc = "Um mob raivoso."
local monsterHp = 10
local monsterMaxHp = 10
local monsterAtk = 8
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

local function createBar()
    local bar = ""
    for i = 1, 40, 1 do
        bar = bar .. "#"
    end
    return bar
end

os.execute("chcp 65001")
os.execute("cls")

print(createBar())
print("-> " .. monsterName)
print("-->", monsterDesc)
print("Som: " .. monsterSound)
print("Horario de spawn: " .. monsterSpawnHour)
print("Item dropavel: " .. monsterItem)
print("--------------")
print("Vida: ", getProguessBar(monsterHp))
print("Ataque: ", getProguessBar(monsterAtk))
print("Defesa: ", getProguessBar(monsterDef))
print("Velocidade: ", getProguessBar(monsterSpe))
print("Inteligencia: ", getProguessBar(monsterInt))
print("--------------")
print(createBar())

while monsterHp > 0 do
    print("Vida do " .. monsterName .. ": " .. monsterHp)
    monsterHp = monsterHp - 1
    if monsterHp == 5 then
        print("Creeper explodiu!!!!")
        monsterHp = 0
    end
end
