data modify storage snbt:temp stack set value [{text:[],entries:0}]
data modify storage snbt:temp indent set value []
data modify storage snbt:temp lookups set value []
item modify entity @s contents {type:"set_name",entity:"this",name:{storage:"snbt:temp",nbt:"nbt"}}
data modify storage snbt:temp text set from entity @s item.components."minecraft:custom_name".extra
function snbt:walk/next
kill @s
