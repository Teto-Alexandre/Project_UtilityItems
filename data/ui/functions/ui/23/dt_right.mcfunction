# ダメージ計測 and 再設置
execute if entity @s[tag=ui_23_1_rot1] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=west,type=right]{CustomName:'{"italic": false,"bold": true,"text":"次元マルチページチェスト"}'} hollow
execute if entity @s[tag=ui_23_1_rot2] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=north,type=right]{CustomName:'{"italic": false,"bold": true,"text":"次元マルチページチェスト"}'} hollow
execute if entity @s[tag=ui_23_1_rot3] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=east,type=right]{CustomName:'{"italic": false,"bold": true,"text":"次元マルチページチェスト"}'} hollow
execute if entity @s[tag=ui_23_1_rot4] store result score $temp ui_temp at @s run fill ~ ~ ~ ~ ~ ~ chest[facing=south,type=right]{CustomName:'{"italic": false,"bold": true,"text":"次元マルチページチェスト"}'} hollow
execute if score $temp ui_temp matches 1.. run data modify block ~ ~ ~ Items set from storage ui:dimensional_chest Items_Right
execute if score $temp ui_temp matches 1.. run kill @e[type=item,nbt={Age:0s},distance=..1.5]

tellraw @a ["",{"text":"> ","color":"gray","bold": true},{"text":"警告","color":"red","bold": true},{"text":" 次元チェストの破壊を試みないでください、微妙にバグります","color":"gray","bold": true}]
