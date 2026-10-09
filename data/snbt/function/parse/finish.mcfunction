# extracts a value from where value parsing started to where the cursor ended up
$data modify storage snbt:temp value set string storage snbt:temp context.snbt $(beginning) $(end)
function snbt:parse/next
