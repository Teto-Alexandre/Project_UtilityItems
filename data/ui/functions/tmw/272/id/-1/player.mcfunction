scoreboard players set @s ui_tmw272_health_limit 999
scoreboard players set @s ui_tmw272_health_max 20
scoreboard players set @s ui_tmw272_health 20
scoreboard players set @s ui_tmw272_mana_limit 99
scoreboard players set @s ui_tmw272_mana_max 0
scoreboard players set @s ui_tmw272_mana_up 10
scoreboard players set @s ui_tmw272_mana 0
scoreboard players set @s ui_tmw272_match_time 0
scoreboard players set @s ui_tmw272_duplication 0

scoreboard players set @s ui_tmw272_self_hurt 0
scoreboard players set @s ui_tmw272_sacrifice 0
scoreboard players set @s ui_tmw272_candle 0
scoreboard players set @s ui_tmw272_index_count 0
scoreboard players set @s ui_tmw272_more_attack_more 0
scoreboard players set @s ui_tmw272_curse 0
scoreboard players set @s ui_tmw272_blessing 0
scoreboard players set @s ui_tmw272_shield 0
scoreboard players set @s ui_tmw272_shield_next 0
scoreboard players set @s ui_tmw272_seeds 0
scoreboard players set @s ui_tmw272_crops 0
scoreboard players set @s ui_tmw272_bullet 0
scoreboard players set @s ui_tmw272_slowness 0
scoreboard players set @s ui_tmw272_hunger 0
scoreboard players set @s ui_tmw272_burn 0
scoreboard players set @s ui_tmw272_speed 0
scoreboard players set @s ui_tmw272_strength 0
scoreboard players set @s ui_tmw272_poison 0
scoreboard players set @s ui_tmw272_invisible 0
scoreboard players set @s ui_tmw272_regeneration 0
scoreboard players set @s ui_tmw272_unluck 0
scoreboard players set @s ui_tmw272_darkness 0
scoreboard players set @s ui_tmw272_resistance 0
scoreboard players set @s ui_tmw272_fire_resistance 0
scoreboard players set @s ui_tmw272_flying 0
scoreboard players set @s ui_tmw272_trade 0
scoreboard players set @s ui_tmw272_nausea 0
scoreboard players set @s ui_tmw272_bleed 0
scoreboard players set @s ui_tmw272_blindness 0
scoreboard players set @s ui_tmw272_glowing 0
scoreboard players set @s ui_tmw272_luck 0
scoreboard players set @s ui_tmw272_wither 0
scoreboard players set @s ui_tmw272_armor 0
scoreboard players set @s ui_tmw272_seal 0
scoreboard players set @s ui_tmw272_invulnerable 0
scoreboard players set @s ui_tmw272_only_one 0
scoreboard players set @s ui_tmw272_energy 0
scoreboard players set @s ui_tmw272_construct 0
scoreboard players set @s ui_tmw272_void 0
scoreboard players set @s ui_tmw272_myth 0
scoreboard players set @s ui_tmw272_taint 0
scoreboard players set @s ui_tmw272_insanity 0
scoreboard players set @s ui_tmw272_stun 0
scoreboard players set @s ui_tmw272_shock 0
scoreboard players set @s ui_tmw272_freeze 0
scoreboard players set @s ui_tmw272_undying 0
scoreboard players set @s ui_tmw272_undying_count 0
scoreboard players set @s ui_tmw272_lethal_range 0
scoreboard players set @s ui_tmw272_soul_break 0
scoreboard players set @s ui_tmw272_dodge 0
scoreboard players set @s ui_tmw272_dodge_next 0
scoreboard players set @s ui_tmw272_accumulation 0
scoreboard players set @s ui_tmw272_fairy 0
scoreboard players set @s ui_tmw272_memory 0
scoreboard players set @s ui_tmw272_chain 0
scoreboard players set @s ui_tmw272_hope 0
scoreboard players set @s ui_tmw272_ec 0
scoreboard players set @s ui_tmw272_karma 0
scoreboard players set @s ui_tmw272_tenacity 0
scoreboard players set @s ui_tmw272_hexproof 0
scoreboard players set @s ui_tmw272_stop 0
scoreboard players set @s ui_tmw272_cost_next 0
scoreboard players set @s ui_tmw272_water 0
scoreboard players set @s ui_tmw272_product 0
scoreboard players set @s ui_tmw272_fund 0
scoreboard players set @s ui_tmw272_charge 0
scoreboard players set @s ui_tmw272_deathblow 0
scoreboard players set @s ui_tmw272_surehit 0
scoreboard players set @s ui_tmw272_confusion 0
scoreboard players set @s ui_tmw272_dazzle 0
scoreboard players set @s ui_tmw272_self_heal 0
scoreboard players set @s ui_tmw272_other_heal 0
scoreboard players set @s ui_tmw272_draw 0
scoreboard players set @s ui_tmw272_discard 0
scoreboard players set @s ui_tmw272_damage 0
scoreboard players set @s ui_tmw272_determination 0
scoreboard players set @s ui_tmw272_soul 0
scoreboard players set @s ui_tmw272_damage_taken 0
scoreboard players set @s ui_tmw272_hp_decrease 0
scoreboard players set @s ui_tmw272_hp_increase 0
scoreboard players set @s ui_tmw272_hp_crease_temp 20
scoreboard players set @s ui_tmw272_restraint 0
scoreboard players set @s ui_tmw272_saturation 0

scoreboard players set @s ui_tmw272_temp1 0
scoreboard players set @s ui_tmw272_temp2 0
scoreboard players set @s ui_tmw272_temp3 0

tag @s remove tmw272_ready

scoreboard players add @s ui_tmw272_battlefront_joins 1
scoreboard players set @s ui_tmw272_summoner_obj_id 0

# OMDを取り出す
function oh_my_dat:please

#
effect give @s resistance infinite 127 true

# (プレイヤーがデッキを持っているなら) OMD に上書き
execute if entity @s[type=player] if entity @s[nbt={SelectedItem:{tag:{tmw:{id:272,type:-1}}}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin set from entity @s SelectedItem.tag.tmw.cg.list
execute if entity @s[type=!player,tag=!hc_deck,tag=!deck_sheep] run function ui:tmw/272/id/-1/non_player/
execute if entity @s[tag=deck_sheep] at @s run function ui:tmw/272/id/-1/deck_sheep

# ここでデバッグ 参戦者のデッキリストをチャットに表示する
#function ui:tmw/272/id/-1/debug/bro_list

# オリジンを戦線中のデッキベースにコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_origin

# 名称ターン1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name set value []

# OMD の一次デッキに現在のデッキをコピー
function ui:tmw/272/common/list_match/copy
function ui:tmw/272/common/shuffle/

# デッキが空なら観戦モードへ
data modify storage ui:temp merge_checker set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute store result score $merge_check ui_temp run data modify storage ui:temp merge_checker set value [{Count:1},{Count:1},{Count:1},{Count:1},{Count:1},{Count:1},{Count:1},{Count:1},{Count:1}]
data remove storage ui:temp merge_checker
execute if score $merge_check ui_temp matches 0 run tag @s add tmw272_spectate
execute if score $merge_check ui_temp matches 0 run tellraw @s [{"text":"> 観戦モード起動"}]
scoreboard players reset $merge_check ui_temp

# チーム
team join blue @s[scores={ui_team=1}]
team join red @s[scores={ui_team=2}]
team join yellow @s[scores={ui_team=3}]
team join green @s[scores={ui_team=4}]
team join gray @s[tag=tmw272_spectate]

# インベントリのコピーをとって全消し
execute if entity @s[type=player] run function ui:template/inventory/push
clear @s
    ##デバッグツールは再取得しておく
    execute if score @s ui_tmw601_accessory matches 5007 run loot replace entity @s inventory.0 loot ui:single_item/tmw/601/5007