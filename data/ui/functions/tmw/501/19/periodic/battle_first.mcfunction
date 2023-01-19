## 初動で強化パーツをストレージに隔離、線形探索で読み取る
## 👆 - 訓練場に移動時、退室後に再利用するため

## モード設定: スキャン＋カメラ起動
## 無敵 5 秒

# 戦闘開始時

#
tag @s remove tmw_501_19_battle_first
tag @s add tmw_501_19_battle_second

# 初期回転角リセット
function ui:template/get_rotation

#
effect clear @s
effect give @s resistance 5 127 true
effect give @s instant_health 10 10 true

# 初期モードと状態の設定
scoreboard players set @s ui_tmw501_19_mct 0
scoreboard players set @s ui_tmw501_19_now_mode 2
scoreboard players set @s ui_tmw501_19_now_camera 1
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
scoreboard players set @s ui_tmw501_19_stat_mov 0
scoreboard players set @s ui_tmw501_19_stat_ilv 0
scoreboard players set @s ui_tmw501_19_stat_hudt 0
scoreboard players set @s ui_tmw501_19_test_fd 0

# アイテムを消す
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air
item replace entity @s inventory.0 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.26 with air

# パーツ性能読み取り
function ui:tmw/501/19/functions/inventory/load/

# ポイント読み取り
function ui:tmw/501/19/functions/inventory/point/
execute if entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:red_stained_glass_pane"}]}] run tellraw @s [{"text":"借金しています"}]
item replace entity @s hotbar.4 with air

# 装備せよ
item replace entity @s armor.head from entity @s inventory.1
item replace entity @s armor.chest from entity @s inventory.3
item replace entity @s armor.legs from entity @s inventory.5
item replace entity @s armor.feet from entity @s inventory.7
item replace entity @s inventory.1 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air

# 仮ハードコード
#scoreboard players set @s ui_tmw501_19_stat_mov 100
#scoreboard players set @s ui_tmw501_19_stat_ilv 3
#scoreboard players set @s ui_tmw501_19_stat_hudt 0

#
scoreboard players operation @s ui_tmw501_19_now_en = @s ui_tmw501_19_stat_en_max
scoreboard players operation @s ui_tmw501_19_now_s1 = @s ui_tmw501_19_stat_s1_max
scoreboard players operation @s ui_tmw501_19_now_s2 = @s ui_tmw501_19_stat_s2_max
