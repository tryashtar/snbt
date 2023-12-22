data modify storage snbt:temp quote set string storage snbt:temp value 0 1
data modify storage snbt:temp contents set string storage snbt:temp value 1 -1
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
execute if data storage snbt:temp {quote:"'"} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"contents","color":"aqua"},{"storage":"snbt:temp","nbt":"quote"}]'
execute if data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '[{"storage":"snbt:temp","nbt":"quote"},{"storage":"snbt:temp","nbt":"contents","color":"aqua"},{"storage":"snbt:temp","nbt":"quote"}]'
execute unless data storage snbt:temp {quote:"'"} unless data storage snbt:temp {quote:'"'} run data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"value","color":"aqua"}'
data modify storage snbt:temp display_key set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
