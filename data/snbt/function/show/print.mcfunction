summon item_display ~ -99999 ~ {UUID:[I;1835364978,2032165736,1919513460,1835103009],item:{id:"tnt",count:1}}
execute as 6d657272-7920-6368-7269-73746d617321 run function snbt:show/resolve
tellraw @s {storage:"snbt:temp",nbt:"stack[0].text",interpret:true}
