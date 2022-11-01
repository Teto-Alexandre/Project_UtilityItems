#

#
particle dust 0.3 1 0.6 1 ~ ~ ~ 0.6 0.6 0.6 0 15 force

data merge storage ui:common {input:{Mode:"to_chest"}}
function ui:common/villager
teleport @s ~ -300 ~
kill @s