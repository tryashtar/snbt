# append a value (and all of its contents, if any) to the output
data modify storage snbt:temp context.beginning set from storage snbt:temp context.start
function snbt:parse/peek with storage snbt:temp context
execute if data storage snbt:temp {char:"{"} run return run function snbt:display/value/compound
execute if data storage snbt:temp {char:"["} run return run function snbt:display/value/list
execute if function snbt:parse/is_number run return run function snbt:display/value/number
function snbt:display/value/string
