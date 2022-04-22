#===========================================================================

#ドリーム仕様の敵にする
    execute as @e[type=zombie,distance=..128,tag=!ui_dreamed] at @s run function ui:dimension/dream/entity

#ドリーム仕様の資源にする
    execute as @e[type=item,distance=..128,tag=!ui_dreamed] run function ui:dimension/dream/item

#ドリーム仕様のアイテムに置き換える
    item replace entity @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] weapon.mainhand with water_bucket{tmw:{id:1002},display:{Name:'{"italic":false,"color":"aqua","text":"染み込んだ水入りバケツ"}',Lore:['{"italic":false,"color":"gray","text":"エーテリウムの大気によって"}','{"italic":false,"color":"gray","text":"変質した水が入ったバケツ"}','{"italic":false,"color":"gray","text":"素材としての利用価値がある"}']}}

#===========================================================================

#幽鬼AI
    execute as @e[tag=ui_enemy_dream1,distance=..128] at @s run function ui:dimension/dream/enemy1

#幽玄AI
    execute as @e[tag=ui_enemy_dream2,distance=..128] at @s run function ui:dimension/dream/enemy2

#===========================================================================

#ボスバー
    #幽玄の王
        execute if entity @e[tag=ui_enemy_dream2] store result bossbar ui:dream2 value run data get entity @e[tag=ui_enemy_dream2,limit=1] Health 1
        