execute as @a unless entity @s[scores={PlayerId=1..}] run function sethome:assign_playernum


scoreboard players enable @a sethome
scoreboard players enable @a home


execute as @a[scores={sethome=1..3}] run function sethome:sethome

execute as @a[scores={home=1..3}] run function sethome:home