# Qキー

#tellraw @a [{"score":{"objective":"ui_temp","name":"$qf"}}]

# サブウェポン２発動
execute if score $qf ui_temp matches 1..2 if score $ink ui_temp < $ink.sub ui_temp run function ui:tmw/237/sub/fail
execute if score $qf ui_temp matches 1..2 if score $ink ui_temp >= $ink.sub ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core

# スペシャルウェポン発動
execute if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core_sub