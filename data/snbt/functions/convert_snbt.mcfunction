summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center",text:'{"storage":"snbt:temp","nbt":"nbt"}'}
data modify storage snbt:temp snbt set from entity 0-0-0-0-1 text
kill 0-0-0-0-1