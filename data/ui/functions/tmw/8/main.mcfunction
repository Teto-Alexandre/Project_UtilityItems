#=======================================================================================================

#Q:モードチェンジ
execute as @s[tag=tmw_drop_n] at @s run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.5 0
execute as @s[tag=tmw_drop_n] at @s positioned ~ ~1 ~ run particle minecraft:crit ^ ^ ^0.5 0.1 0.1 0.1 0.5 10 normal

#execute as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with air
execute as @s[tag=tmw_drop_n,tag=tmw_8-1] run item replace entity @s weapon.mainhand with minecraft:stone_axe{Unbreakable:1b,tmw:{is:1,id:8,type:2,enableQ:1},HideFlags:7,display:{Name:'[{"text":"仕込み道具[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute as @s[tag=tmw_drop_n,tag=tmw_8-2] run item replace entity @s weapon.mainhand with minecraft:stone_pickaxe{Unbreakable:1b,tmw:{is:1,id:8,type:1,enableQ:1},HideFlags:7,display:{Name:'[{"text":"仕込み道具[ツルハシモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: 斧モードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}

#S+Q:吹き飛ばしモード
execute as @s[tag=tmw_drop_s] at @s run playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 1 1 0
execute as @s[tag=tmw_drop_s] at @s positioned ~ ~1 ~ run particle minecraft:crit ^ ^ ^0.5 0.1 0.1 0.1 0.5 10 normal
#execute as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with air
execute as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with minecraft:stone_shovel{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}],tmw:{is:1,id:8,type:2,enableQ:1},HideFlags:7,display:{Name:'[{"text":"仕込み道具[KOモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"ノックバック攻撃ができる","color":"gray","italic":false}]','[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更（済）","color":"gray","italic":false}]']}}

#=======================================================================================================

tag @s[tag=tmw_8-1] remove tmw_8-1
tag @s[tag=tmw_8-2] remove tmw_8-2

execute as @s[nbt={SelectedItem:{tag:{tmw:{type:1}}}}] run tag @s add tmw_8-1
execute as @s[nbt={SelectedItem:{tag:{tmw:{type:2}}}}] run tag @s add tmw_8-2

#=======================================================================================================
