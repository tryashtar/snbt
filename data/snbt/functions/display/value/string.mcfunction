function snbt:parse/string
function snbt:parse/finish with storage snbt:temp context
data modify storage snbt:temp quote set string storage snbt:temp value 0 1
data modify storage snbt:temp contents set string storage snbt:temp value 1 -1
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute if data storage snbt:temp {quote:"'"} run data modify entity 0-0-0-0-1 text set value '["\'",{"storage":"snbt:temp","nbt":"contents","color":"green"},"\'"]'
execute if data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '["\\"",{"storage":"snbt:temp","nbt":"contents","color":"green"},"\\""]'
execute unless data storage snbt:temp {quote:"'"} unless data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '["\\"",{"storage":"snbt:temp","nbt":"value","color":"green"},"\\""]'
data modify storage snbt:temp output append from entity 0-0-0-0-1 text
kill 0-0-0-0-1
