# recursively append all key names in the compound
# keys are deleted as we go, so we don't have to bother parsing values
execute store result storage snbt:temp context.start int 1 run scoreboard players set end snbt 1
execute store result storage snbt:temp context.end int 1 run scoreboard players add end snbt 1
data modify storage snbt:temp context.beginning set value 1
function snbt:parse/string
function snbt:parse/finish with storage snbt:temp context
data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '{"storage":"snbt:temp","nbt":"value"}'
data modify storage snbt:temp output append from entity 6d657272-7920-6368-7269-73746d617321 text
data modify storage snbt:temp context.key set from storage snbt:temp value
scoreboard players remove keys snbt 1
execute if score keys snbt matches 1.. run function snbt:keys/next with storage snbt:temp context
execute if score keys snbt matches 1.. run function snbt:keys/loop
