# resolve the text here, since the dialog can't do it
item modify entity @s contents {type:"set_name",entity:"this",name:{storage:"snbt:temp",nbt:"lookups[-1].text",interpret:true}}
data modify storage snbt:temp stack[-1].resolved set from entity @s item.components."minecraft:custom_name"
function snbt:walk/nest/menu.macro with storage snbt:temp stack[-1]
