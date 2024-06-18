# get all markers and set temp scores equal to their id's
execute as @e[type=marker,scores={PlayerId=1..}] run scoreboard players operation @s Math = @s PlayerId
# subtract target id from temp scores, matching scores will result as 0
scoreboard players operation @e[type=marker,scores={PlayerId=1..}] Math -= @s PlayerId

# reset all markers not matching player id
execute as @e[type=marker] unless entity @s[scores={Math=0}] run scoreboard players reset @s Math

# repeat filtering process for home # (doesnt have to be an exact match, can be 1-3 for a max of 3 homes)
execute as @e[type=marker,scores={Math=0}] run scoreboard players operation @s Math = @s HomeNum
scoreboard players operation @e[type=marker,scores={Math=1..3}] Math -= @s sethome

# remove old forceload and marker for designated home
execute at @e[type=marker,scores={Math=0}] run forceload remove ~ ~
kill @e[type=marker,scores={Math=0}]

# summon new home marker
execute at @s run summon marker

# set marker as current playerid and home #
execute at @s run scoreboard players operation @e[distance=...1,type=marker] PlayerId = @s PlayerId
execute at @s run scoreboard players operation @e[distance=...1,type=marker] HomeNum = @s sethome
execute at @s run forceload add ~ ~

tellraw @s ["",{"text":"successfully set home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"},"color":"green"}]

# reset player score
scoreboard players set @s sethome 0

# reset temp scores
scoreboard players reset @e Math