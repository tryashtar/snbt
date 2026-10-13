# append the comma
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append value ","

# start a new line
execute if score #pretty snbt matches 1 run function snbt:walk/indent/line

# increment this stack entry count
execute store result score #entries snbt run data get storage snbt:temp stack[-1].entries
execute store result storage snbt:temp stack[-1].entries int 1 run scoreboard players add #entries snbt 1

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
