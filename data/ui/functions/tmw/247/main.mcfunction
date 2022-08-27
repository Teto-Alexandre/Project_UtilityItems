# ミサイルが飛んできていたら警告表示が出る防具

# 状態を判別
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
scoreboard players set $temp ui_temp 0
execute as @e[tag=tmw_242] if score @s ui_gpc = $obj_id ui_temp run scoreboard players set $temp ui_temp 1

# タイトル表示
execute unless entity @s[gamemode=spectator] run title @s times 0 5 0
execute unless entity @s[gamemode=spectator] if score $temp ui_temp matches 0 run title @s title [{"text":"   NO SIGNAL                    ","color":"white"}]
execute unless entity @s[gamemode=spectator] if score $temp ui_temp matches 1 run scoreboard players operation $time ui_temp = $world ui_tc
execute unless entity @s[gamemode=spectator] if score $temp ui_temp matches 1 run scoreboard players operation $time ui_temp %= #4 ui_num
execute unless entity @s[gamemode=spectator] if score $temp ui_temp matches 1 if score $time ui_temp matches 0..1 run title @s title [{"text":"   WARNING                      ","color":"red"}]
execute unless entity @s[gamemode=spectator] if score $temp ui_temp matches 1 if score $time ui_temp matches 2..3 run title @s title [{"text":"▶ WARNING                    ◀","color":"red"}]