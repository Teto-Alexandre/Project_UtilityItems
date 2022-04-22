# 見るツリー切り替え
    execute if score @s ui_skillget matches -1 run scoreboard players set @s ui_skilltree_v 1
    execute if score @s ui_skillget matches -2 run scoreboard players set @s ui_skilltree_v 2

# 必要スキルポイント

    ## 一覧
        execute if score @s ui_skillget matches 1 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 2 run scoreboard players set @s ui_skillpointC 2
        execute if score @s ui_skillget matches 3 run scoreboard players set @s ui_skillpointC 3
        execute if score @s ui_skillget matches 4 run scoreboard players set @s ui_skillpointC 4
        execute if score @s ui_skillget matches 102 run scoreboard players set @s ui_skillpointC 2
        execute if score @s ui_skillget matches 103 run scoreboard players set @s ui_skillpointC 3
        execute if score @s ui_skillget matches 104 run scoreboard players set @s ui_skillpointC 4
        execute if score @s ui_skillget matches 202 run scoreboard players set @s ui_skillpointC 2
        execute if score @s ui_skillget matches 203 run scoreboard players set @s ui_skillpointC 3
        execute if score @s ui_skillget matches 204 run scoreboard players set @s ui_skillpointC 4
        execute if score @s ui_skillget matches 1001 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 2001 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 3001 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 10001 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 10002 run scoreboard players set @s ui_skillpointC 2
        execute if score @s ui_skillget matches 10003 run scoreboard players set @s ui_skillpointC 1
        execute if score @s ui_skillget matches 10102 run scoreboard players set @s ui_skillpointC 3

    ## 足りてなかったら弾く
        execute if score @s ui_skillpoint < @s ui_skillpointC run scoreboard players reset @s ui_skillget
        execute if score @s ui_skillpoint < @s ui_skillpointC at @s run playsound block.dispenser.fail player @s ~ ~ ~ 1 1 0
        execute if score @s ui_skillpoint >= @s ui_skillpointC run scoreboard players set @s ui_face_up 0
        execute if score @s ui_skillpoint >= @s ui_skillpointC at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 0
        execute if score @s ui_skillpoint >= @s ui_skillpointC run scoreboard players operation @s ui_skillpoint -= @s ui_skillpointC

# スキル取得メイン
    #,Lore:['{"italic":false,"color":"gray","text":"長い間倉庫に眠っていた"}']
    #display:{Name:'{"text":"木の剣","color":"white","italic":false}'},
    
    ## 武器 1 ~ 1000

        ### 剣 1 ~ 100

    execute if score @s ui_skillget matches 1 run give @s wooden_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:3,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 1 run tag @s add ui.skilltree.1
    execute if score @s ui_skillget matches 2 run give @s stone_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:4,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 2 run tag @s add ui.skilltree.2
    execute if score @s ui_skillget matches 3 run give @s iron_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:5,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 3 run tag @s add ui.skilltree.3
    execute if score @s ui_skillget matches 4 run give @s diamond_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:6,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 4 run tag @s add ui.skilltree.4
    
        ### 斧 101 ~ 200

    execute if score @s ui_skillget matches 102 run give @s stone_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:6,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 102 run tag @s add ui.skilltree.102
    execute if score @s ui_skillget matches 103 run give @s iron_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:7,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 103 run tag @s add ui.skilltree.103
    execute if score @s ui_skillget matches 104 run give @s diamond_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:8,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 104 run tag @s add ui.skilltree.104
    
        ### 鎌 201 ~ 300

    execute if score @s ui_skillget matches 202 run give @s stone_hoe{display:{Name:'{"text":"石の鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:2,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 202 run tag @s add ui.skilltree.202
    execute if score @s ui_skillget matches 203 run give @s iron_hoe{display:{Name:'{"text":"鉄の鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:3,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 203 run tag @s add ui.skilltree.203
    execute if score @s ui_skillget matches 204 run give @s diamond_hoe{display:{Name:'{"text":"ダイヤモンドの鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:4,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 204 run tag @s add ui.skilltree.204
    
    ## 防具 1001 ~ 2000

    execute if score @s ui_skillget matches 1001 run give @s leather_helmet{display:{Name:'{"text":"革の帽子","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor1",Amount:1,Operation:0,UUID:[I;2,1,2,1],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 1001 run give @s leather_chestplate{display:{Name:'{"text":"革の上着","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor2",Amount:3,Operation:0,UUID:[I;2,1,2,2],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 1001 run give @s leather_leggings{display:{Name:'{"text":"革のズボン","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor3",Amount:2,Operation:0,UUID:[I;2,1,2,3],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 1001 run give @s leather_boots{display:{Name:'{"text":"革のブーツ","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor4",Amount:1,Operation:0,UUID:[I;2,1,2,4],Slot:"mainhand"}]} 1
    execute if score @s ui_skillget matches 1001 run tag @s add ui.skilltree.1001
    
    ## 食料 2001 ~ 3000

    execute if score @s ui_skillget matches 2001 run give @s melon_slice 8
    execute if score @s ui_skillget matches 2001 run tag @s add ui.skilltree.2001
    
    ## ポーション 3001 ~ 5000

    execute if score @s ui_skillget matches 3001 run give @s potion{Potion:"water"} 3
    execute if score @s ui_skillget matches 3001 run tag @s add ui.skilltree.3001
    
    ## 銃火器 10001 ~ 20000

    execute if score @s ui_skillget matches 10001 run give @s gunpowder
    execute if score @s ui_skillget matches 10001 run tag @s add ui.skilltree.10001
    execute if score @s ui_skillget matches 10002 run give @s minecraft:carrot_on_a_stick{tmw:{id:305,slotable:3,enableQ:1,gun:{name:"IH-1P",dmg:80,bc:1,ua:200,mov:10,range:40,gct1:10,gct2:10,bu:1,ms:1,type:1,png:1,max:1,now:0}},CustomModelData:110301,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 火縄銃の親族","color":"gray","italic":false}]','[{"text":" 弾は一個一個手作業で込める","color":"gray","italic":false}]','[{"text":" 装填可能:[ハンドガンの弾]","color":"green","italic":false}]']},Unbreakable:1b,HideFlags:4}
    execute if score @s ui_skillget matches 10002 run tag @s add ui.skilltree.10002
    execute if score @s ui_skillget matches 10003 run give @s minecraft:carrot_on_a_stick{tmw:{id:306,slotable:2,enableQ:1,ammo:{name:"IH-HG-Bullet",max:1,amount:1,type:1,png:1,onetime:1,shottype:2}},CustomModelData:110501,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 一般的なハンドガンの弾","color":"gray","italic":false}]','[{"text":" 小さい割に懐を圧迫する","color":"gray","italic":false}]','[{"text":" 共通規格なのでどの銃にも使用できる","color":"gray","italic":false}]','[{"text":" オフハンドに持ってQキーで装填","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4}
    execute if score @s ui_skillget matches 10003 run tag @s add ui.skilltree.10003
    execute if score @s ui_skillget matches 10102 run give @s minecraft:carrot_on_a_stick{tmw:{id:305,slotable:3,enableQ:1,gun:{name:"IH-2P-R",dmg:60,bc:1,ua:250,mov:8,range:30,gct1:10,gct2:10,bu:1,ms:1,type:1,png:2,max:6,now:0}},CustomModelData:110302,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 初期モデルのリボルバー","color":"gray","italic":false}]','[{"text":" 最大６個 変なものを入れると詰まる","color":"gray","italic":false}]','[{"text":" 弾は一個一個手作業で込める","color":"gray","italic":false}]','[{"text":" 装填可能:[ハンドガンの弾]","color":"green","italic":false}]']},Unbreakable:1b,HideFlags:4}
    execute if score @s ui_skillget matches 10102 run tag @s add ui.skilltree.10102

# リセット
    scoreboard players reset @s ui_skillget