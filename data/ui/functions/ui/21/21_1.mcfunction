#
function oh_my_dat:please

# 破壊されたら中身ごと復活
execute if block ~ ~ ~ #ui:nocol run function ui:ui/21/dt_right
execute if block ^ ^ ^1 #ui:nocol run function ui:ui/21/dt_left

# メイン
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Right set from block ~ ~ ~ Items
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Left set from block ^ ^ ^1 Items

particle dust 1 0 1 2 ^ ^0.9 ^0.5 0.2 0 0.2 0 1 normal

# 近くでしゃがむと消滅
execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/21/st