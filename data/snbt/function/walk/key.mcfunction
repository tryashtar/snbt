# append the unquoted key as copyable text
data remove storage snbt:temp text[0]
function snbt:walk/key.macro with storage snbt:temp token

# proceed to the next token
execute if data storage snbt:temp text[0] run function snbt:walk/next
