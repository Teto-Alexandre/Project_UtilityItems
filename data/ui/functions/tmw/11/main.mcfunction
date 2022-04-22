#=======================================================================================================

tag @s[tag=tmw_drop_s] add tmw_drop_n

#改良版じゃないのに何かが装填されたら消去する
#execute unless entity @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] as @s[nbt={SelectedItem:{tag:{Charged:1b}}}] run item replace entity @s[nbt=!{SelectedItem:{tag:{tmw_PCharge:1b}}}] weapon.mainhand with minecraft:crossbow{tmw:{id:11},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"ポーションランチャー","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]']}}
#execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{tmw:{type:2}}}]}] as @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b}}]}] run item replace entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{tmw_PCharge:1b}}]}] weapon.offhand with minecraft:crossbow{tmw:{id:11},Enchantments:[{id:"unbreaking",lvl:1s}],Unbreakable:1b,HideFlags:7,display:{Name:'[{"text":"ポーションランチャー","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションを装填","color":"gray","italic":false}]','[{"text":"装填後は任意のタイミングで発射可能","color":"gray","italic":false}]']}}

#もちろんポーションの射出　両手対応
#tag @s[scores={ui_usec=1..},nbt={SelectedItem:{tag:{tmw_PCharge:1b}}}] add tmw_r
execute as @s[scores={ui_usec=1..},nbt={SelectedItem:{tag:{tmw_PCharge:1b}}}] at @s run function ui:tmw/11/shot
#tag @s[scores={ui_usec=1..},nbt={Inventory:[{Slot:-106b,tag:{tmw_PCharge:1b}}]}] add tmw_r
execute as @s[scores={ui_usec=1..},nbt={Inventory:[{Slot:-106b,tag:{tmw_PCharge:1b}}]}] at @s run function ui:tmw/11/shot_of

#ポーションの排出
#tag @s[tag=tmw_drop_n,nbt=!{Inventory:[{Slot:-106b}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt=!{Inventory:[{Slot:-106b}]}] at @s run function ui:tmw/11/putout

#ポーションの装填・置換
#tag @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:potion"}]}] at @s run function ui:tmw/11/reload
#tag @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:splash_potion"}]}] at @s run function ui:tmw/11/reload
#tag @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]}] add tmw_r
execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,id:"minecraft:lingering_potion"}]}] at @s run function ui:tmw/11/reload

#情報が書き込まれたクロスボウを回収
#execute as @s[tag=tmw_r] run item replace entity @s weapon.mainhand with air
#execute as @s[tag=tmw_r] run execute in overworld run item replace entity @s weapon.mainhand from block 0 0 0 container.0
#execute as @s[tag=tmw_r] run tag @s remove tmw_r

#=======================================================================================================