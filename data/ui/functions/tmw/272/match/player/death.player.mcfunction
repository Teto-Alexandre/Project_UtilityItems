particle dust 1 0 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound block.beacon.deactivate player @a ~ ~ ~ 1 0.8 0

execute at @s run kill @e[type=item,tag=tmw272_dropitem_card,distance=..5]
function ui:template/inventory/pull