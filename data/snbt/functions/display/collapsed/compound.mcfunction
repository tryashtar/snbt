# to generate the preview, we need to capture the full output for this compound
# so save the current output to a stack to restore later
data modify storage snbt:temp stack append from storage snbt:temp output
data modify storage snbt:temp output set value []

# treat the preview as if we were one level higher
scoreboard players remove depth snbt 1
function snbt:display/value/compound
scoreboard players add depth snbt 1

# store the preview and restore the original output
data modify storage snbt:temp nested append from storage snbt:temp output
data modify storage snbt:temp output set from storage snbt:temp stack[-1]
data remove storage snbt:temp stack[-1]

# write preview text
execute store result score entries snbt run data get storage snbt:temp size
scoreboard players remove entries snbt 1
data modify storage snbt:temp output append value '"{"'
execute store result storage snbt:temp context.index int 1 run scoreboard players get nested snbt
scoreboard players add nested snbt 1
function snbt:display/collapsed/hover with storage snbt:temp context
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append value '" "'
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append from entity 6d657272-7920-6368-7269-73746d617321 text
execute if score entries snbt matches 1.. run data modify storage snbt:temp output append value '" "'
data modify storage snbt:temp output append value '"}"'
