execute store result storage snbt:temp context.start int 1 run scoreboard players set end snbt 1
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
data modify storage snbt:temp context.beginning set value 1
function snbt:parse/string with storage snbt:temp context
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"value"}'
data modify storage snbt:temp output append from entity 0-0-0-0-1 text
kill 0-0-0-0-1
data modify storage snbt:temp context.key set from storage snbt:temp value
scoreboard players remove keys snbt 1
execute if score keys snbt matches 1.. run function snbt:iterate/pair/next with storage snbt:temp context
execute if score keys snbt matches 1.. run function snbt:keys/loop
