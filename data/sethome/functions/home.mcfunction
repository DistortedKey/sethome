# get all markers and set temp scores equal to their id's
execute as @e[type=marker,scores={PlayerId=1..}] run scoreboard players operation @s Math = @s PlayerId
# subtract target id from temp scores, matching scores will result as 0
scoreboard players operation @e[type=marker,scores={PlayerId=1..}] Math -= @s PlayerId

# reset all markers not matching player id
execute as @e[type=marker] unless entity @s[scores={Math=0}] run scoreboard players reset @s Math

# repeat filtering process for home # (doesnt have to be an exact match, can be 1-3 for a max of 3 homes)
execute as @e[type=marker,scores={Math=0}] run scoreboard players operation @s Math = @s HomeNum
scoreboard players operation @e[type=marker,scores={Math=1..}] Math -= @s home

tellraw @s ["",{"text":"teleporting to home ","color":"aqua"},{"score":{"name":"@s","objective":"home"},"color":"green"}]


# tp to the marker
tp @s @e[type=marker,scores={Math=0},limit=1,sort=nearest]

# reset player score
scoreboard players set @s home 0