# まさか生身で戦場に行くとは言うまい

# 初期モードと状態の設定
scoreboard players set @s ui_tmw501_19_mct 0
scoreboard players set @s ui_tmw501_19_now_mode 1
scoreboard players set @s ui_tmw501_19_now_camera 2
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
scoreboard players set @s ui_tmw501_19_stat_rot_x 3600
scoreboard players set @s ui_tmw501_19_stat_rot_y 3600
scoreboard players set @s ui_tmw501_19_stat_mov 0
scoreboard players set @s ui_tmw501_19_stat_ilv 0
scoreboard players set @s ui_tmw501_19_stat_hudt 0
scoreboard players set @s ui_tmw501_19_test_fd 0

# 装備消去
item replace entity @s inventory.1 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.7 with air
