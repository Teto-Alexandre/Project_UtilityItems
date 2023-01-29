# Fキー

#tellraw @a [{"score":{"objective":"ui_temp","name":"$qf"}}]

# スペシャルウェポン発動
execute if score $qf ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $qf ui_temp matches 1 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core
execute if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core

# サブウェポン２発動
execute if score $qf ui_temp matches 2 if score $ink ui_temp < $ink.sp ui_temp run function ui:tmw/237/sub/fail
execute if score $qf ui_temp matches 2 if score $ink ui_temp >= $ink.sp ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core_sp