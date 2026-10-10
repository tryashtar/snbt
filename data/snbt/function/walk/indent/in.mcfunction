# start a new more-indented line
data modify storage snbt:temp stack[-1].text append value "\n"
data modify storage snbt:temp indent append value " "
data modify storage snbt:temp stack[-1].text append from storage snbt:temp indent[]
