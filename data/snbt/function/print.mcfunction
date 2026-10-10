# not an entry point, wrapped by others to do setup and printing
data modify storage snbt:temp stack set value [[]]
data modify storage snbt:temp indent set value []
summon text_display ~ ~ ~ {UUID:[I;1835364978,2032165736,1919513460,1835103009],text:{storage:"snbt:temp",nbt:"nbt"}}
data modify storage snbt:temp text set from entity 6d657272-7920-6368-7269-73746d617321 text.extra
function snbt:concat/loop
kill 6d657272-7920-6368-7269-73746d617321
tellraw @s {storage:"snbt:temp",nbt:"stack[0][]",interpret:true,separator:""}
