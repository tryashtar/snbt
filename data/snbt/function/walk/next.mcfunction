# colored text (keys and values) can be appended quickly and directly
execute if data storage snbt:temp text[0].text run return run function snbt:walk/text

# some plain text tokens represent structure where we need to run extra commands
data modify storage snbt:temp token set from storage snbt:temp text[0]
execute if data storage snbt:temp {token:","} run return run function snbt:walk/comma
execute if data storage snbt:temp {token:"{"} run return run function snbt:walk/open
execute if data storage snbt:temp {token:"["} run return run function snbt:walk/open
execute if data storage snbt:temp {token:"}"} run return run function snbt:walk/close
execute if data storage snbt:temp {token:"]"} run return run function snbt:walk/close

# other plain text tokens, like spaces and colons, can be appended directly
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token
execute if data storage snbt:temp text[0] run function snbt:walk/next
