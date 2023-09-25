# 初回だけ
summon item_display ~ ~ ~ {Tags:["tmw272","tmw272_unpower"],item:{Count:1b,id:"minecraft:command_block",tag:{host_id:-1,players:[]}}}
data modify storage ui:temp player_template set value {id:-1,health:100,mana:100,deck:[   {id:"minecraft:carrot_on_a_stick",tag:{tmw:{id:272,type:1,cg:{name:"attack1",cost:1,effects:[{target_type:1,effect_type:1,var:1}]}},HideFlags:1,display:{Name:'[{"text":"軽い攻撃","italic":false,"color":"white"}]',Lore:['[{"text":"相手に１ダメージ与える","color":"gray","italic":false}]']}}}   ]}
execute as @e[tag=tmw272_unpower] run execute store result entity @s item.tag.host_id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run scoreboard players operation @s ui_is = $host_id ui_temp

scoreboard players operation @s ui_tmw272_link_id = $base ui_obj_id
scoreboard players operation @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id = $base ui_obj_id
execute as @e[tag=tmw272_unpower] run function ui:misc/act/make_obj_id

execute store result storage ui:temp player_template.id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template
tag @e[tag=tmw272_unpower] remove tmw272_unpower