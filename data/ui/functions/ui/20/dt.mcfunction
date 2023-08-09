# ダメージ計測 and 再設置
execute store result score $temp ui_temp run fill ~ ~ ~ ~ ~ ~ chest{CustomName:'{"italic": false,"bold": true,"text":"亜空間チェスト"}'} hollow
execute if score $temp ui_temp matches 1.. run data modify block ~ ~ ~ Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
execute if score $temp ui_temp matches 1.. run kill @e[type=item,nbt={Age:0s},distance=..1.5]