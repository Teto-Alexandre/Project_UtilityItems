# コストが足りたら破棄
execute if score $broadcast_type ui_temp matches 2 run execute if data storage ui:temp card.success_delete run function ui:tmw/272/after_effect/delete
execute if score $broadcast_type ui_temp matches 5 run execute if data storage ui:temp card.success_delete run function ui:tmw/272/death_effect/delete

# 使用成功した場合
data modify storage ui:temp temp.card set from storage ui:temp card

# 最終使用
function oh_my_dat:please

execute store result score $count ui_temp run data get storage ui:temp temp.card.effects
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_duplication run execute store result score $duplication ui_temp run scoreboard players get @s ui_tmw272_duplication
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_duplication run execute if score $duplication ui_temp matches 1.. run function ui:tmw/272/effect/misc/duplication/
execute unless data storage ui:temp temp.card.particle run function ui:tmw/272/effect/particle_type/success_old
execute if data storage ui:temp temp.card.particle run function ui:tmw/272/effect/particle_type/success

# 汎用変数を準備
scoreboard players set $condition_checker ui_temp 0
execute store result score $no_last_used ui_temp run data get storage ui:temp temp.card.no_last_used

# カード発動（説明文表示のために多数分岐）
function ui:tmw/272/effect/broadcast/

# 出血チェック
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_bleed if score @s ui_tmw272_bleed matches 1.. run function ui:tmw/272/effect/misc/bleed
# 出血チェック
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_fairy if score @s ui_tmw272_fairy matches 1.. run function ui:tmw/272/effect/misc/fairy
# 帯電チェック
execute if score $is_card ui_temp matches 1 run scoreboard players set $shock_checker ui_temp 0
execute if score $is_card ui_temp matches 1 if score @s ui_tmw272_shock matches 1.. run scoreboard players operation $shock_checker ui_temp = @s ui_tmw272_shock
# コスト変動
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_cost_next unless score @s ui_tmw272_cost_next matches 0 run scoreboard players set @s ui_tmw272_cost_next 0
# 必中
execute if score $is_card ui_temp matches 1 run scoreboard players set $surehit_checker ui_temp 0
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_surehit if score @s ui_tmw272_surehit matches 1.. run scoreboard players set $surehit_checker ui_temp 1
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_surehit if score @s ui_tmw272_surehit matches 1.. run data merge storage ui:tmw272 {temp:{input:"surehit"}}
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_surehit if score @s ui_tmw272_surehit matches 1.. run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_surehit if score @s ui_tmw272_surehit matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "！"}]

# MOBは攻撃してる方向を向く
execute unless data storage ui:temp temp.card.indep at @s[type=!player] run teleport @s ~ ~ ~ facing entity @e[tag=tmw272_visual_input,limit=1] feet

# effect消化に移行
execute if score $count ui_temp matches 1.. run function ui:tmw/272/effect/burn.check

# パーティクル
execute if score $particle_self ui_temp matches 1.. positioned as @s run function ui:tmw/272/effect/particle_type/self
execute if score $particle_look ui_temp matches 1.. positioned as @e[tag=tmw272_visual_input] run function ui:tmw/272/effect/particle_type/look
execute if score $particle_other ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old,tag=!ui_temp_player,tag=!tmw272_visual_input] run function ui:tmw/272/effect/particle_type/other
execute if score $particle_target ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old] run function ui:tmw/272/effect/particle_type/target
execute if score $particle_laser ui_temp matches 1.. positioned as @e[tag=tmw272_temp_card_effect_target_old,tag=!ui_temp_player] run function ui:tmw/272/effect/particle_type/laser

# 帯電
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_shock if score $shock_checker ui_temp >= @s ui_tmw272_shock if score @s ui_tmw272_shock matches 1.. run function ui:tmw/272/effect/misc/shock

# 一連の効果終了
execute if entity @s[tag=tmw272_temp_card_effect_activated_silence] if score @s ui_tmw272_silence matches 1.. run function ui:tmw/272/effect/misc/silence

# 一連のターゲットを削除
tag @e[tag=tmw272_temp_card_effect_dodge] remove tmw272_temp_card_effect_dodge
tag @e[tag=tmw272_temp_card_effect_target_old] remove tmw272_temp_card_effect_target_old

# 最終使用カードに登録
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep if score $no_last_used ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsed set from storage ui:temp card
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep if score $no_last_used ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.LastUsedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]

# カード使用スコアを1に
execute if score $is_card ui_temp matches 1 run scoreboard players set @s ui_tmw272_card_used 1

# 汎用変数を削除
scoreboard players reset $no_last_used ui_temp
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
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_chain run scoreboard players add @s ui_tmw272_chain 1
execute if score $is_card ui_temp matches 1 unless data storage ui:temp temp.card.indep unless data storage ui:temp temp.card.no_surehit if score $surehit_checker ui_temp matches 1 run scoreboard players remove @s ui_tmw272_surehit 1

# numがあるなら返却
execute if score $is_card ui_temp matches 1 if data storage ui:temp card.num_consume run function ui:tmw/272/effect/success.num

# カードの一時データも削除
data remove storage ui:temp temp
scoreboard players reset $count ui_temp