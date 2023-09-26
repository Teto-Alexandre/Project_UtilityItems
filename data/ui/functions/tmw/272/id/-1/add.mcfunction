# プレイヤー追加
tag @e[tag=ui_temp_game] add tmw272_unpower
data modify storage ui:temp player_template set value {id:-1,health:100,mana:100,deck:[   {id:"minecraft:carrot_on_a_stick",tag:{tmw:{id:272,type:1,cg:{name:"attack1",cost:1,effects:[{target_type:1,effect_type:1,var:1}]}},HideFlags:1,display:{Name:'[{"text":"軽い攻撃","italic":false,"color":"white"}]',Lore:['[{"text":"相手に１ダメージ与える","color":"gray","italic":false}]']}}}   ]}

scoreboard players operation @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id = $link_id ui_temp

execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template

# デバッグメッセージ
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"追加プレイヤーをマッチへ追加しました"}]
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"entity":"@e[tag=tmw272_unpower]","nbt":"item.tag"}]

# タグ消し
tag @e[tag=tmw272_unpower] remove tmw272_unpower