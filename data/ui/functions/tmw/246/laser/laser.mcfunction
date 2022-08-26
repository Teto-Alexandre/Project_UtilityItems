scoreboard players set $temp ui_temp 0
scoreboard players add @s ui_use1 1

# id共有
scoreboard players operation $id ui_temp = @s ui_id

teleport @s ^ ^ ^0.5

# 選択できたらこいつを消滅させる
execute as @e[tag=ui_d,tag=!ui_sel,tag=!ui_d_nosel,distance=..1] if score @s ui_id = $id ui_temp store success score $temp ui_temp run tag @s add ui_seld
execute as @e[tag=ui_d,tag=!ui_sel,tag=!ui_d_nosel,distance=..1] if score @s ui_id = $id ui_temp run tag @s add ui_sel

execute as @e[tag=ui_sel_obj,tag=!ui_sel_o,distance=..1] if score @s ui_id = $id ui_temp store success score $temp ui_temp run tag @s add ui_seld_o
execute as @e[tag=ui_sel_obj,tag=!ui_sel_o,distance=..1] if score @s ui_id = $id ui_temp run tag @s add ui_sel_o

particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[nbt={SelectedItem:{tag:{ui:{use:1}}}}]

kill @s[scores={ui_use1=100..}]
execute unless score $temp ui_temp matches 0 run kill @s

execute as @s[scores={ui_use1=..99}] if score $temp ui_temp matches 0 at @s run function ui:tmw/246/laser/laser