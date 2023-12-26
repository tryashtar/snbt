# append a number to the output
function snbt:parse/number
function snbt:parse/finish with storage snbt:temp context
data modify storage snbt:temp number set string storage snbt:temp value 0 -1
data modify storage snbt:temp suffix set string storage snbt:temp value -1
function snbt:display/value/number_set
data modify storage snbt:temp output append from entity 6d657272-7920-6368-7269-73746d617321 text
