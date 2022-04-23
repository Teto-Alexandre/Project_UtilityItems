#> ui:misc/kill_slime
#
# 一時的スライムを奈落に送る
#
# $motionslime ui_world　を　1　にすると呼び出される
#
# これは動作性向上のために1tick生かす必要があるから
#
# @public

#転送+キル
execute as @e[tag=ui_motionslime] at @s run teleport @s ~ -200 ~
kill @e[tag=ui_motionslime]

#条件リセット
scoreboard players set $motionslime ui_world 0