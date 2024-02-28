scoreboard objectives add sethome trigger
scoreboard objectives add home trigger

scoreboard objectives add PlayerId dummy
scoreboard objectives add HomeNum dummy
scoreboard objectives add Math dummy

scoreboard players set one PlayerId 1
execute unless score nextId PlayerId >= one PlayerId run scoreboard players set nextId PlayerId 1
scoreboard players reset one PlayerId