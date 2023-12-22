summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"context.string"}'
data modify storage snbt:temp context.escaped_string set from entity 0-0-0-0-1 text
kill 0-0-0-0-1
data modify storage snbt:temp context.escaped_string set string storage snbt:temp context.escaped_string 0 -1
function snbt:splice/append with storage snbt:temp context
