# if player doesnt have an assigned Id, set next available
execute as @a unless entity @s[scores={PlayerId=1..}] run function sethome:assign_playernum

# allow all players to use triggers
scoreboard players enable @a sethome
scoreboard players enable @a home

# if player used sethome, run function
execute as @a[scores={sethome=1..3}] run function sethome:sethome
# if player used home, run function
execute as @a[scores={home=1..3}] run function sethome:home