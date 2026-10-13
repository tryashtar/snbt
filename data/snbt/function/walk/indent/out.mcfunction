# start a new less-indented line
data modify storage snbt:temp stack[-1].text append value "\n"
data remove storage snbt:temp indent[-1]
function snbt:walk/indent/tab
