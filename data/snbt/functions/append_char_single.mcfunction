summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center",text:'{"storage":"snbt:temp","nbt":"context.key"}'}
data modify storage snbt:temp context.escaped_key set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
execute store result score length snbt run data get storage snbt:temp context.escaped_key
execute store result storage snbt:temp context.length int 1 run scoreboard players remove length snbt 1
function snbt:truncate with storage snbt:temp context
function snbt:append_char with storage snbt:temp context
