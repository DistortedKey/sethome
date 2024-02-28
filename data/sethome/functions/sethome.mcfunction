execute as @e[type=text_display,scores={PlayerId=1..}] run scoreboard players operation @s Math = @s PlayerId
scoreboard players operation @e[type=text_display,scores={PlayerId=1..}] Math -= @s PlayerId
execute as @e[type=text_display] unless entity @s[scores={Math=0}] run scoreboard players reset @s Math


execute as @e[type=text_display,scores={Math=0}] run scoreboard players operation @s Math = @s HomeNum
scoreboard players operation @e[type=text_display,scores={Math=1..3}] Math -= @s sethome

execute at @e[type=text_display,scores={Math=0}] run forceload remove ~ ~
kill @e[type=text_display,scores={Math=0}]

execute at @s run summon text_display

execute at @s run scoreboard players operation @e[distance=...1,type=text_display] PlayerId = @s PlayerId
execute at @s run scoreboard players operation @e[distance=...1,type=text_display] HomeNum = @s sethome
execute at @s run forceload remove ~ ~

scoreboard players set @s sethome 0

scoreboard players reset @e Math
scoreboard players reset @e AnotherMath