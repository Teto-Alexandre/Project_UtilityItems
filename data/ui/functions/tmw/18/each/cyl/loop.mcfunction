# 5m先に点を描画
particle dust 1 0 0 1.5 ^ ^ ^5 0 0 0 0 1 force

# 反復回数を減らして角度をずらす、それからループ
scoreboard players remove #loop test 1
execute if score #loop test matches 1.. rotated ~3 ~ run function ui:tmw/18/each/cyl/loop