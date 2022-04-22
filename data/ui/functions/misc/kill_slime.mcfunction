#透明なスライムを奈落に送る
#（1tick生かす必要があるのでtickの最初に実行すること）

#転送+キル
execute as @e[tag=ui_motionslime] at @s run teleport @s ~ -200 ~
kill @e[tag=ui_motionslime]

#条件リセット
scoreboard players reset $motionslime ui_world