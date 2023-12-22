summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
data modify entity 0-0-0-0-1 text set value '{"storage":"snbt:temp","nbt":"nbt"}'
data modify storage snbt:temp context.snbt set from entity 0-0-0-0-1 text
function snbt:convert/flatten with storage snbt:temp context
kill 0-0-0-0-1
