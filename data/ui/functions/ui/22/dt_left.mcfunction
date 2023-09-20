# ダメージ計測 and 再設置
execute if entity @e[tag=ui_22_1_rot1] store result score $temp ui_temp at @s run fill ~ ~ ~1 ~ ~ ~1 chest[facing=west,type=left]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot2] store result score $temp ui_temp at @s run fill ~-1 ~ ~ ~-1 ~ ~ chest[facing=north,type=left]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot3] store result score $temp ui_temp at @s run fill ~ ~ ~-1 ~ ~ ~-1 chest[facing=east,type=left]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot4] store result score $temp ui_temp at @s run fill ~1 ~ ~ ~1 ~ ~ chest[facing=south,type=left]{CustomName:'{"italic": false,"bold": true,"text":"亜空間マルチページチェスト"}'} hollow
execute if entity @e[tag=ui_22_1_rot1] if score $temp ui_temp matches 1.. run data modify block ~ ~ ~1 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Left
execute if entity @e[tag=ui_22_1_rot2] if score $temp ui_temp matches 1.. run data modify block ~-1 ~ ~ Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Left
execute if entity @e[tag=ui_22_1_rot3] if score $temp ui_temp matches 1.. run data modify block ~ ~ ~-1 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Left
execute if entity @e[tag=ui_22_1_rot4] if score $temp ui_temp matches 1.. run data modify block ~1 ~ ~ Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items_Left
execute if score $temp ui_temp matches 1.. run kill @e[type=item,nbt={Age:0s},distance=..1.5]