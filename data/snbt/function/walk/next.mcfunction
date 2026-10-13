# parse and process the next token
data modify storage snbt:temp token set from storage snbt:temp text[0]

# these are vaguely sorted by how common they are, so we run fewer commands
execute if data storage snbt:temp {token:","} run return run function snbt:walk/comma
execute if data storage snbt:temp token{color:"aqua"} run return run function snbt:walk/key
execute if data storage snbt:temp token{color:"gold"} run return run function snbt:walk/number
execute if data storage snbt:temp {token:"'"} run return run function snbt:walk/string
execute if data storage snbt:temp {token:'"'} run return run function snbt:walk/string
execute if data storage snbt:temp {token:"{"} run return run function snbt:walk/open
execute if data storage snbt:temp {token:"["} run return run function snbt:walk/open
execute if data storage snbt:temp {token:"}"} run return run function snbt:walk/close
execute if data storage snbt:temp {token:"]"} run return run function snbt:walk/close
execute if data storage snbt:temp token.extra[{color:"aqua"}] run return run function snbt:walk/quoted_key

# other plain text tokens, like spaces and colons, can be appended directly
data remove storage snbt:temp text[0]
data modify storage snbt:temp stack[-1].text append from storage snbt:temp token
execute if data storage snbt:temp text[0] run function snbt:walk/next
