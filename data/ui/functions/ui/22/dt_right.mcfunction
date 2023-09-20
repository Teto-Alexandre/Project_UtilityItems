# ダメージ計測 and 再設置
execute if entity @e[tag=ui_22_1_rot1] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=west,type=right]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot2] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=north,type=right]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot3] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=east,type=right]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot4] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=south,type=right]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if score $temp ui_temp matches 1.. run data modify block ~ ~ ~ Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Right
execute if score $temp ui_temp matches 1.. run kill @e[type=item,nbt={Age:0s},distance=..1.5]