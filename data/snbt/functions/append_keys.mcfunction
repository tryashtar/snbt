data modify storage snbt:temp context.key set string storage snbt:temp snbt 2 3
scoreboard players set quote snbt 0
execute if data storage snbt:temp context{key:"\\"} run scoreboard players set quote snbt 1
execute if data storage snbt:temp context{key:"'"} run scoreboard players set quote snbt 2
scoreboard players set end snbt 3
execute if score quote snbt matches 1 run scoreboard players add end snbt 1
execute if score quote snbt matches 1 run data modify storage snbt:temp context.key set value '"'
execute store result storage snbt:temp context.start int 1 run scoreboard players get end snbt
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
scoreboard players set escape snbt 0
function snbt:parse_key with storage snbt:temp context
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center",text:'["",{"storage":"snbt:temp","nbt":"context.key","color":"aqua"},": "]'}
data modify storage snbt:temp output append from entity 0-0-0-0-1 text
kill 0-0-0-0-1

scoreboard players remove keys snbt 1
execute if score keys snbt matches 1.. run function snbt:remove_key with storage snbt:temp context
execute if score keys snbt matches 1.. run function snbt:append_keys
