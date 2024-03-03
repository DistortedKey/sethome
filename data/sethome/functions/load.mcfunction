scoreboard objectives add sethome trigger
scoreboard objectives add home trigger

scoreboard objectives add PlayerId dummy
scoreboard objectives add HomeNum dummy
scoreboard objectives add Math dummy

execute unless score nextId PlayerId matches 1.. run scoreboard players set nextId PlayerId 1