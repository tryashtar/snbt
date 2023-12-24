function snbt:parse/number with storage snbt:temp context
function snbt:parse/finish with storage snbt:temp context
data modify storage snbt:temp number set string storage snbt:temp value 0 -1
data modify storage snbt:temp suffix set string storage snbt:temp value -1
summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],alignment:"center"}
function snbt:display/value/number_set
data modify storage snbt:temp output append from entity 0-0-0-0-1 text
kill 0-0-0-0-1
