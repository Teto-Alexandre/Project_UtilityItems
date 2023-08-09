#
function oh_my_dat:please

# 破壊されたら中身ごと復活
execute if block ~ ~ ~ #ui:nocol run function ui:ui/20/dt

# メイン
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items set from block ~ ~ ~ Items

particle dust 1 0 1 2 ~ ~0.9 ~ 0.2 0 0.2 0 1 normal

# 近くでしゃがむと消滅
execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/20/st