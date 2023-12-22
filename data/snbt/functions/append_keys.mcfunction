function snbt:parse_key
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center",text:'["",{"storage":"snbt:temp","nbt":"context.key","color":"aqua"},": "]'}
data modify storage snbt:temp output append from entity 0-0-0-0-1 text
kill 0-0-0-0-1

scoreboard players remove keys snbt 1
execute if score keys snbt matches 1.. run function snbt:remove_key with storage snbt:temp context
execute if score keys snbt matches 1.. run function snbt:append_keys
