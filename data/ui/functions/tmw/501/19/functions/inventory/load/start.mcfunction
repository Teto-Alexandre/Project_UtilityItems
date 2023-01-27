# 読み取り開始

# インベントリ全消し
clear @s

# 初期モードと状態の設定
scoreboard players set @s ui_tmw501_19_mct 0
scoreboard players set @s ui_tmw501_19_now_mode 2
scoreboard players set @s ui_tmw501_19_now_hud 1
scoreboard players set @s ui_tmw501_19_now_jet 1
scoreboard players set @s ui_tmw501_19_now_shock_absorber 0

# 初期ステータス
scoreboard players set @s ui_tmw501_19_stat_en_max 0
scoreboard players set @s ui_tmw501_19_stat_en_regen 0
scoreboard players set @s ui_tmw501_19_stat_en_use_camera_act 0
scoreboard players set @s ui_tmw501_19_stat_en_use_camera_con 0
scoreboard players set @s ui_tmw501_19_stat_en_use_jet 0
scoreboard players set @s ui_tmw501_19_stat_en_use_speed 0
scoreboard players set @s ui_tmw501_19_stat_jet_type 0
scoreboard players set @s ui_tmw501_19_stat_speed_type 0
scoreboard players set @s ui_tmw501_19_stat_s1_max 0
scoreboard players set @s ui_tmw501_19_stat_s1_regen 0
scoreboard players set @s ui_tmw501_19_stat_s2_max 0
scoreboard players set @s ui_tmw501_19_stat_s2_regen 0
scoreboard players set @s ui_tmw501_19_stat_rot_x 0
scoreboard players set @s ui_tmw501_19_stat_rot_y 0
scoreboard players set @s ui_tmw501_19_stat_mov -140
scoreboard players set @s ui_tmw501_19_stat_ilv 0
scoreboard players set @s ui_tmw501_19_stat_hudt 0
scoreboard players set @s ui_tmw501_19_test_fd 0
scoreboard players set @s ui_tmw501_19_test_dt 0

# パーツ性能読み取り
function ui:tmw/501/19/functions/inventory/load/

# 装備せよ
item replace entity @s hotbar.4 with air
data merge storage ui:common {input:{Mode:"replace",Num:100}}
data modify storage ui:common input.Item set from entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory[{Slot:16b}]
function ui:common/item
data merge storage ui:common {input:{Mode:"replace",Num:101}}
data modify storage ui:common input.Item set from entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory[{Slot:14b}]
function ui:common/item
data merge storage ui:common {input:{Mode:"replace",Num:102}}
data modify storage ui:common input.Item set from entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory[{Slot:12b}]
function ui:common/item
data merge storage ui:common {input:{Mode:"replace",Num:103}}
data modify storage ui:common input.Item set from entity @e[tag=ui_temp_pda,limit=1] ArmorItems[0].tag.PDA.Inventory[{Slot:10b}]
function ui:common/item
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone"}]}] run item replace entity @s armor.head with air

# 移動速度設定
function ui:tmw/501/19/functions/speed

#
scoreboard players operation @s ui_tmw501_19_now_en = @s ui_tmw501_19_stat_en_max
scoreboard players operation @s ui_tmw501_19_now_s1 = @s ui_tmw501_19_stat_s1_max
scoreboard players operation @s ui_tmw501_19_now_s2 = @s ui_tmw501_19_stat_s2_max

# 初期回転角リセット
function ui:template/get_rotation

#
title @s times 0 20 0
effect clear @s
effect give @s health_boost 1000000 4 true
effect give @s resistance 5 127 true
effect give @s instant_health 10 10 true
effect give @s night_vision 1000000 127 true

#
gamemode adventure @s
