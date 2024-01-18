# 初回だけ
#summon item_display ~ ~ ~ {Tags:["tmw272","tmw272_unpower"],item:{Count:1b,id:"minecraft:command_block",tag:{host_id:-1,players:[],anti_rejoin:[]}}}
summon item_display ~ ~ ~ {Tags:["tmw272","tmw272_unpower"],item:{Count:1b,id:"minecraft:command_block",tag:{host_id:-1,anti_rejoin:[]}}}

execute as @e[tag=tmw272_unpower] run execute store result entity @s item.tag.host_id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run scoreboard players operation @s ui_is = $host_id ui_temp

scoreboard players operation $link_id ui_temp = $base ui_obj_id
scoreboard players operation @s ui_tmw272_link_id = $link_id ui_temp
scoreboard players operation @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id = $link_id ui_temp
execute as @e[tag=tmw272_unpower] run function ui:misc/act/make_obj_id

execute as @e[tag=tmw272_unpower] run scoreboard players set @s ui_is2 201
scoreboard objectives add ui_tmw272_match_round dummy
scoreboard objectives add ui_tmw272_true_match_round dummy
execute as @e[tag=tmw272_unpower] run scoreboard players set @s ui_tmw272_match_round 0
execute as @e[tag=tmw272_unpower] run scoreboard players set @s ui_tmw272_true_match_round 0

#data modify storage ui:temp player_template set value {id:-1,health:100,mana:100}
#execute store result storage ui:temp player_template.id int 1 run scoreboard players get $host_id ui_temp
#execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template
#execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
#execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template

data modify storage ui:temp player_template set value {id:-1}
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.anti_rejoin append from storage ui:temp player_template
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.anti_rejoin append from storage ui:temp player_template

# デバッグメッセージ
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"初期マッチメイクと生成を行いました"}]
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"マッチNBTの内容を開示します"}]
#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"entity":"@e[tag=tmw272_unpower]","nbt":"item.tag"}]

# タグ消し
tag @e[tag=tmw272_unpower] remove tmw272_unpower

# 戦歴変数を追加
scoreboard objectives add ui_tmw272_battlefront_wins dummy
scoreboard objectives add ui_tmw272_battlefront_joins dummy
scoreboard objectives add ui_tmw272_summoner_obj_id dummy

# 次のプレイヤー認証用のスコアを作成
scoreboard objectives add ui_tmw272_health_limit dummy
scoreboard objectives add ui_tmw272_health_max dummy
scoreboard objectives add ui_tmw272_health dummy
scoreboard objectives add ui_tmw272_mana_limit dummy
scoreboard objectives add ui_tmw272_mana_max dummy
scoreboard objectives add ui_tmw272_mana_up dummy
scoreboard objectives add ui_tmw272_mana dummy
scoreboard objectives add ui_tmw272_match_time dummy
scoreboard objectives add ui_tmw272_duplication dummy

# 拡張スコアも作成
scoreboard objectives add ui_tmw272_self_hurt dummy
scoreboard objectives add ui_tmw272_candle dummy
scoreboard objectives add ui_tmw272_index_count dummy
scoreboard objectives add ui_tmw272_more_attack_more dummy
scoreboard objectives add ui_tmw272_curse dummy
scoreboard objectives add ui_tmw272_blessing dummy
scoreboard objectives add ui_tmw272_shield dummy
scoreboard objectives add ui_tmw272_shield_next dummy
scoreboard objectives add ui_tmw272_seeds dummy
scoreboard objectives add ui_tmw272_crops dummy
scoreboard objectives add ui_tmw272_bullet dummy
scoreboard objectives add ui_tmw272_slowness dummy
scoreboard objectives add ui_tmw272_hunger dummy
scoreboard objectives add ui_tmw272_burn dummy
scoreboard objectives add ui_tmw272_speed dummy
scoreboard objectives add ui_tmw272_strength dummy
scoreboard objectives add ui_tmw272_poison dummy
scoreboard objectives add ui_tmw272_invisible dummy
scoreboard objectives add ui_tmw272_regeneration dummy
scoreboard objectives add ui_tmw272_unluck dummy
scoreboard objectives add ui_tmw272_darkness dummy
scoreboard objectives add ui_tmw272_resistance dummy
scoreboard objectives add ui_tmw272_fire_resistance dummy
scoreboard objectives add ui_tmw272_flying dummy
scoreboard objectives add ui_tmw272_trade dummy
scoreboard objectives add ui_tmw272_nausea dummy
scoreboard objectives add ui_tmw272_bleed dummy
scoreboard objectives add ui_tmw272_blindness dummy
scoreboard objectives add ui_tmw272_glowing dummy
scoreboard objectives add ui_tmw272_luck dummy
scoreboard objectives add ui_tmw272_wither dummy
scoreboard objectives add ui_tmw272_armor dummy
scoreboard objectives add ui_tmw272_seal dummy
scoreboard objectives add ui_tmw272_invulnerable dummy
scoreboard objectives add ui_tmw272_only_one dummy
scoreboard objectives add ui_tmw272_energy dummy
scoreboard objectives add ui_tmw272_construct dummy
scoreboard objectives add ui_tmw272_void dummy
scoreboard objectives add ui_tmw272_myth dummy
scoreboard objectives add ui_tmw272_taint dummy
scoreboard objectives add ui_tmw272_insanity dummy
scoreboard objectives add ui_tmw272_stun dummy
scoreboard objectives add ui_tmw272_shock dummy
scoreboard objectives add ui_tmw272_freeze dummy
scoreboard objectives add ui_tmw272_undying dummy
scoreboard objectives add ui_tmw272_undying_count dummy
scoreboard objectives add ui_tmw272_lethal_range dummy
scoreboard objectives add ui_tmw272_soul_break dummy
scoreboard objectives add ui_tmw272_dodge dummy
scoreboard objectives add ui_tmw272_dodge_next dummy
scoreboard objectives add ui_tmw272_accumulation dummy
scoreboard objectives add ui_tmw272_fairy dummy
scoreboard objectives add ui_tmw272_memory dummy
scoreboard objectives add ui_tmw272_chain dummy
scoreboard objectives add ui_tmw272_hope dummy
scoreboard objectives add ui_tmw272_ec dummy
scoreboard objectives add ui_tmw272_karma dummy
scoreboard objectives add ui_tmw272_tenacity dummy
scoreboard objectives add ui_tmw272_hexproof dummy
scoreboard objectives add ui_tmw272_stop dummy
scoreboard objectives add ui_tmw272_cost_next dummy
scoreboard objectives add ui_tmw272_water dummy
scoreboard objectives add ui_tmw272_product dummy
scoreboard objectives add ui_tmw272_fund dummy
scoreboard objectives add ui_tmw272_charge dummy
scoreboard objectives add ui_tmw272_deathblow dummy
scoreboard objectives add ui_tmw272_surehit dummy
scoreboard objectives add ui_tmw272_confusion dummy
scoreboard objectives add ui_tmw272_dazzle dummy
scoreboard objectives add ui_tmw272_self_heal dummy
scoreboard objectives add ui_tmw272_other_heal dummy
scoreboard objectives add ui_tmw272_draw dummy
scoreboard objectives add ui_tmw272_discard dummy
scoreboard objectives add ui_tmw272_damage dummy
scoreboard objectives add ui_tmw272_determination dummy
scoreboard objectives add ui_tmw272_soul dummy
scoreboard objectives add ui_tmw272_damage_taken dummy
scoreboard objectives add ui_tmw272_hp_decrease dummy
scoreboard objectives add ui_tmw272_hp_increase dummy
scoreboard objectives add ui_tmw272_hp_crease_temp dummy
scoreboard objectives add ui_tmw272_restraint dummy

# ユーザー用一次変数
scoreboard objectives add ui_tmw272_temp1 dummy
scoreboard objectives add ui_tmw272_temp2 dummy
scoreboard objectives add ui_tmw272_temp3 dummy

# 説明文情報の再設定
function ui:tmw/272/common/preset_text

# 初期ステータス設定
execute as @s run function ui:tmw/272/id/-1/player
execute as @e[tag=ui_temp_target,limit=1] run function ui:tmw/272/id/-1/player

# SSロジック起動
schedule function ui:tmw/272/match/ 1t append
