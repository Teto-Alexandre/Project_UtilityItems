execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

#Q:モードチェンジ
execute as @s[tag=tmw_drop_n] at @s run function ui:tmw/8/drop_n

#S+Q:吹き飛ばしモード
execute as @s[tag=tmw_drop_s] at @s run function ui:tmw/8/drop_s

execute if score $type ui_temp matches 1 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:stone_axe{Unbreakable:1b,tmw:{is:1,id:8,type:2,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツール[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 2 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:stone_pickaxe{Unbreakable:1b,tmw:{is:1,id:8,type:1,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツール[ツルハシモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: 斧モードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 1..2 as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with minecraft:stone_shovel{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}],tmw:{is:1,id:8,type:2,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツール[KOモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"ノックバック攻撃ができる","color":"gray","italic":false}]','[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更（済）","color":"gray","italic":false}]']}}

execute if score $type ui_temp matches 11 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:iron_axe{Unbreakable:1b,tmw:{is:1,id:8,type:12,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールII[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 12 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:iron_pickaxe{Unbreakable:1b,tmw:{is:1,id:8,type:11,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールII[ツルハシモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: 斧モードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 11..12 as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with minecraft:iron_shovel{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}],tmw:{is:1,id:8,type:12,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールII[KOモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"ノックバック攻撃ができる","color":"gray","italic":false}]','[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更（済）","color":"gray","italic":false}]']}}

execute if score $type ui_temp matches 21 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:diamond_axe{Unbreakable:1b,tmw:{is:1,id:8,type:22,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIII[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 22 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:diamond_pickaxe{Unbreakable:1b,tmw:{is:1,id:8,type:21,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIII[ツルハシモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: 斧モードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 21..22 as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with minecraft:diamond_shovel{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}],tmw:{is:1,id:8,type:22,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIII[KOモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"ノックバック攻撃ができる","color":"gray","italic":false}]','[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更（済）","color":"gray","italic":false}]']}}

execute if score $type ui_temp matches 31 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:netherite_axe{Unbreakable:1b,tmw:{is:1,id:8,type:32,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIV[斧モード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 32 as @s[tag=tmw_drop_n] run item replace entity @s weapon.mainhand with minecraft:netherite_pickaxe{Unbreakable:1b,tmw:{is:1,id:8,type:31,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIV[ツルハシモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Q: 斧モードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更","color":"gray","italic":false}]']}}
execute if score $type ui_temp matches 31..32 as @s[tag=tmw_drop_s] run item replace entity @s weapon.mainhand with minecraft:netherite_shovel{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}],tmw:{is:1,id:8,type:32,enableQ:1},HideFlags:7,display:{Name:'[{"text":"可変ツールIV[KOモード]","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"ノックバック攻撃ができる","color":"gray","italic":false}]','[{"text":"Q: ツルハシモードに変更","color":"gray","italic":false}]','[{"text":"S+Q: KOモードに変更（済）","color":"gray","italic":false}]']}}