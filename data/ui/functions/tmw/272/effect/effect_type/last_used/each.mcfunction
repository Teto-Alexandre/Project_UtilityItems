# 最終使用
function oh_my_dat:please

data modify storage ui:temp temp.LastUsed set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed

data modify storage ui:temp temp.LastUsed merge from storage ui:temp temp.effect.merge

execute if data storage ui:temp temp.effect{effect_mode:"steal"} as @e[tag=ui_temp_player] run function oh_my_dat:please
execute if data storage ui:temp temp.effect{effect_mode:"random"} as @e[tag=ui_temp_players,sort=random,limit=1] run function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.LastUsed
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids set value []
# AEのノードがもし通常のカードに組み込まれてるなら発動するけど・・・
execute if data storage ui:temp temp.effect{effect_target:"me"} run execute as @e[tag=ui_temp_player] run function ui:tmw/272/effect/effect_type/last_used/append
execute if data storage ui:temp temp.effect{effect_target:"self"} run execute as @s run function ui:tmw/272/effect/effect_type/last_used/append
execute if data storage ui:temp temp.effect{effect_target:"target"} run execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/last_used/append

#execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"のAEの予約を受けた"}]

data remove storage ui:temp temp.LastUsed
data remove storage ui:temp temp.target_ids_temp