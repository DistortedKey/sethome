scoreboard objectives add sethome trigger
scoreboard objectives add home trigger
scoreboard objectives add numOfHomes dummy

scoreboard objectives add PlayerId dummy
scoreboard objectives add HomeNum dummy
scoreboard objectives add Math dummy

scoreboard objectives add Echo dummy

execute unless score nextId PlayerId matches 1.. run scoreboard players set nextId PlayerId 1
execute unless score #max numOfHomes matches 1.. run scoreboard players set #max numOfHomes 3