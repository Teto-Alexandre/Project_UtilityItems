particle dust 1 0 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound block.beacon.deactivate player @a ~ ~ ~ 1 0.8 0

function oh_my_dat:release
teleport @s ~ -300 ~
kill @s