execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_tenacity matches 1.. run tag @s remove tmw272_temp_card_effect_target

# ターゲット全員で体力を平均化する
function ui:tmw/272/common/count_targets
scoreboard players remove $count_targets ui_temp 1

function ui:tmw/272/effect/effect_type/health_swap/loop

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の体力が"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text": "になった！"}]

scoreboard players reset $count_targets ui_temp