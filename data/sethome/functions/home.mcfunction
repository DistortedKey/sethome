execute as @e[type=text_display,scores={PlayerId=1..}] run scoreboard players operation @s Math = @s PlayerId
scoreboard players operation @e[type=text_display,scores={PlayerId=1..}] Math -= @s PlayerId

execute as @e[type=text_display] unless entity @s[scores={Math=0}] run scoreboard players reset @s Math

execute as @e[type=text_display,scores={Math=0}] run scoreboard players operation @s Math = @s HomeNum
scoreboard players operation @e[type=text_display,scores={Math=1..3}] Math -= @s home



tp @s @e[type=text_display,scores={Math=0},limit=1,sort=nearest]

scoreboard players set @s home 0