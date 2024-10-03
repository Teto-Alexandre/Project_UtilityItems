# 死亡と不死とかのチェック
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score @s ui_tmw272_determination matches 1.. run function ui:tmw/272/match/player/state/determination
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range if score @s ui_tmw272_undying > @s ui_tmw272_undying_count run function ui:tmw/272/match/player/state/undying
execute if score @s ui_tmw272_health <= @s ui_tmw272_lethal_range run function ui:tmw/272/match/player/death