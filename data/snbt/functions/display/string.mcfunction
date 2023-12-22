data modify storage snbt:temp quote set string storage snbt:temp context.string 0 1
data modify storage snbt:temp string set string storage snbt:temp context.string 1 -1
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute if data storage snbt:temp {quote:"'"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"string","color":"green"},{"storage":"snbt:temp","nbt":"quote"}]'
execute if data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"string","color":"green"},{"storage":"snbt:temp","nbt":"quote"}]'
execute unless data storage snbt:temp {quote:"'"} unless data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '["\\"",{"storage":"snbt:temp","nbt":"context.string","color":"green"},"\\""]'
data modify storage snbt:temp display_value set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
