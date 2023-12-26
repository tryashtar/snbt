# append a string to the output in value form
function snbt:parse/string
function snbt:parse/finish with storage snbt:temp context
# outer quotes are shown in white, with the text including escapes in green
data modify storage snbt:temp quote set string storage snbt:temp value 0 1
data modify storage snbt:temp contents set string storage snbt:temp value 1 -1
execute if data storage snbt:temp {quote:"'"} run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '["\'",{"storage":"snbt:temp","nbt":"contents","color":"green"},"\'"]'
execute if data storage snbt:temp {quote:'"'} run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '["\\"",{"storage":"snbt:temp","nbt":"contents","color":"green"},"\\""]'
# when the provided path leads to a lone NBT string, the quotes aren't present in the parsing SNBT, but should be included
execute unless data storage snbt:temp {quote:"'"} unless data storage snbt:temp {quote:'"'} run data modify entity 6d657272-7920-6368-7269-73746d617321 text set value '["\\"",{"storage":"snbt:temp","nbt":"value","color":"green"},"\\""]'
data modify storage snbt:temp output append from entity 6d657272-7920-6368-7269-73746d617321 text
