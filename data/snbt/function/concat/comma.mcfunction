execute store result score entries snbt run data get storage snbt:temp stack[-1].entries
execute store result storage snbt:temp stack[-1].entries int 1 run scoreboard players add entries snbt 1
execute if score pretty snbt matches 0 run return 0
data modify storage snbt:temp stack[-1].text append value "\n"
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp indent[]
