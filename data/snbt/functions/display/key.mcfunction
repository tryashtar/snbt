data modify storage snbt:temp quote set string storage snbt:temp context.string 0 1
execute store result score length snbt run data get storage snbt:temp context.string
execute store result storage snbt:temp context.length int 1 run scoreboard players remove length snbt 1
function snbt:splice/remove_quotes with storage snbt:temp context
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute if data storage snbt:temp {quote:"'"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"string","color":"aqua"},{"storage":"snbt:temp","nbt":"quote"}]'
execute if data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"string","color":"aqua"},{"storage":"snbt:temp","nbt":"quote"}]'
execute unless data storage snbt:temp {quote:"'"} unless data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"context.string","color":"aqua"}'
data modify storage snbt:temp display_key set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
