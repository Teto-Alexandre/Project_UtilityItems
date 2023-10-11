scoreboard players set @s ui_tmw272_health 20
scoreboard players set @s ui_tmw272_mana_max 0
scoreboard players set @s ui_tmw272_mana 0
scoreboard players set @s ui_tmw272_match_time 0
scoreboard players set @s ui_tmw272_duplication 0

scoreboard players set @s ui_tmw272_self_hurt 0
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

scoreboard players set @s ui_tmw272_temp1 0
scoreboard players set @s ui_tmw272_temp2 0
scoreboard players set @s ui_tmw272_temp3 0

# OMDを取り出す
function oh_my_dat:please

# (プレイヤーがデッキを持っているなら) OMD に上書き
execute if entity @s[type=player] if entity @s[nbt={SelectedItem:{tag:{tmw:{id:272,type:-1}}}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list set from entity @s SelectedItem.tag.tmw.cg.list
execute if entity @s[type=!player] run function ui:tmw/272/id/-1/non_player/

# OMD の一次デッキに現在のデッキをコピー
function ui:tmw/272/common/list_match/copy
function ui:tmw/272/common/shuffle/

# インベントリのコピーをとって全消し
execute if entity @s[type=player] run function ui:template/inventory/push
clear @s
    ##デバッグツールは再取得しておく
    execute if score @s ui_tmw601_accessory matches 5007 run loot replace entity @s inventory.0 loot ui:single_item/tmw/601/5007