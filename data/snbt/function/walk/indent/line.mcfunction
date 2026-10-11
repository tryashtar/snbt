# start a new line
data modify storage snbt:temp stack[-1].text append value "\n"
data remove storage snbt:temp text[0]
function snbt:walk/indent/tab
