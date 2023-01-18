## 初動で強化パーツをストレージに隔離、線形探索で読み取る
## 👆 - 訓練場に移動時、退室後に再利用するため

## モード設定: スキャン＋カメラ起動
## 無敵 5 秒

# 戦闘開始時

#
tag @s remove tmw_501_19_battle_first

#
effect clear @s

#
scoreboard players set @s ui_tmw501_19_mct 0
scoreboard players set @s ui_tmw501_19_now_mode 2
scoreboard players set @s ui_tmw501_19_now_camera 2
scoreboard players set @s ui_tmw501_19_now_jet 1

# 仮ハードコード
scoreboard players set @s ui_tmw501_19_stat_en_max 2000
scoreboard players set @s ui_tmw501_19_stat_en_regen 15
scoreboard players set @s ui_tmw501_19_stat_en_use_camera 40
scoreboard players set @s ui_tmw501_19_stat_en_use_jet 50
scoreboard players set @s ui_tmw501_19_stat_en_use_speed 35
scoreboard players set @s ui_tmw501_19_stat_jet_type 0
scoreboard players set @s ui_tmw501_19_stat_speed_type 1
scoreboard players set @s ui_tmw501_19_stat_s1_max 2000
scoreboard players set @s ui_tmw501_19_stat_s1_regen 0
scoreboard players set @s ui_tmw501_19_stat_s2_max 100
scoreboard players set @s ui_tmw501_19_stat_s2_regen 1
scoreboard players set @s ui_tmw501_19_stat_rot_x 100
scoreboard players set @s ui_tmw501_19_stat_rot_y 100

#
scoreboard players operation @s ui_tmw501_19_now_en = @s ui_tmw501_19_stat_en_max
scoreboard players operation @s ui_tmw501_19_now_s1 = @s ui_tmw501_19_stat_s1_max
scoreboard players operation @s ui_tmw501_19_now_s2 = @s ui_tmw501_19_stat_s2_max
