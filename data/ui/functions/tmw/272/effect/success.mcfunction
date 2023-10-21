# 使用成功した場合
data modify storage ui:temp temp.card set from storage ui:temp card

# 最終使用
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed set from storage ui:temp card

execute store result score $count ui_temp run data get storage ui:temp temp.card.effects
execute if score $broadcast_type ui_temp matches 1 run execute store result score $duplication ui_temp run scoreboard players get @s ui_tmw272_duplication
execute if score $broadcast_type ui_temp matches 1 run execute if score $duplication ui_temp matches 1.. run function ui:tmw/272/effect/misc/duplication/
execute store result score $particle_self ui_temp run data get storage ui:temp temp.card.particle_self
execute store result score $particle_look ui_temp run data get storage ui:temp temp.card.particle_look
execute store result score $particle_target ui_temp run data get storage ui:temp temp.card.particle_target
execute store result score $particle_other ui_temp run data get storage ui:temp temp.card.particle_other
execute store result score $particle_laser ui_temp run data get storage ui:temp temp.card.particle_laser

# 汎用変数を準備
scoreboard players set $condition_checker ui_temp 0

#
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"CHECK_COST が承認しました EFFECT解決数:"},{"score":{"name": "$count","objective": "ui_temp"}}]

# カード発動（説明文表示のために多数分岐）
function ui:tmw/272/effect/broadcast/

# 出血チェック
execute if score $broadcast_type ui_temp matches 1 if score @s ui_tmw272_bleed matches 1.. run function ui:tmw/272/effect/misc/bleed
# 出血チェック
execute if score $broadcast_type ui_temp matches 1 if score @s ui_tmw272_fairy matches 1.. run function ui:tmw/272/effect/misc/fairy
# 帯電チェック
execute if score $broadcast_type ui_temp matches 1 run scoreboard players set $shock_checker ui_temp 0
execute if score $broadcast_type ui_temp matches 1 if score @s ui_tmw272_shock matches 1.. run scoreboard players operation $shock_checker ui_temp = @s ui_tmw272_shock

# effect消化に移行
execute if score $count ui_temp matches 1.. run function ui:tmw/272/effect/burn.check

# パーティクル
execute if score $particle_self ui_temp matches 1.. positioned as @s run function ui:tmw/272/effect/particle_type/self
execute if score $particle_look ui_temp matches 1.. positioned as @e[tag=tmw272_visual_input] run function ui:tmw/272/effect/particle_type/look
execute if score $particle_other ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old,tag=!ui_temp_player,tag=!tmw272_visual_input] run function ui:tmw/272/effect/particle_type/other
execute if score $particle_target ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old] run function ui:tmw/272/effect/particle_type/target
execute if score $particle_laser ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old,tag=!ui_temp_player] run function ui:tmw/272/effect/particle_type/laser

# 帯電
execute if score $broadcast_type ui_temp matches 1 if score $shock_checker ui_temp >= @s ui_tmw272_shock if score @s ui_tmw272_shock matches 1.. run function ui:tmw/272/effect/misc/shock

# 一連のターゲットを削除
tag @e[tag=tmw272_temp_card_effect_dodge] remove tmw272_temp_card_effect_dodge
tag @e[tag=tmw272_temp_card_effect_target_old] remove tmw272_temp_card_effect_target_old

# 汎用変数を削除
scoreboard players reset $particle_self ui_temp
scoreboard players reset $particle_look ui_temp
scoreboard players reset $particle_target ui_temp
scoreboard players reset $particle_other ui_temp
scoreboard players reset $particle_laser ui_temp
scoreboard players reset $particle ui_temp
scoreboard players reset $condition_checker ui_temp
scoreboard players reset $condition ui_temp
scoreboard players reset $condition_id ui_temp
scoreboard players reset $target_type ui_temp
scoreboard players reset $effect_type ui_temp
scoreboard players reset $hit_effect ui_temp
scoreboard players reset $var ui_temp
scoreboard players reset $rand ui_temp

#
execute if score $broadcast_type ui_temp matches 1 run scoreboard players add @s ui_tmw272_chain 1

# カードの一時データも削除
data remove storage ui:temp temp
scoreboard players reset $count ui_temp