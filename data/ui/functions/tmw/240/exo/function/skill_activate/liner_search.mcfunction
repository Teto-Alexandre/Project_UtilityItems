# 総当たりで装備していく

# 次の数字を取得
    execute store result score $core ui_temp run data get storage ui:temp2 temp[0]
    data remove storage ui:temp2 temp[0]

# 取得
    
    ## 武器 1 ~ 1000

        ### 剣 1 ~ 100

    execute if score $core ui_temp matches 1 run give @s wooden_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:3,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 2 run give @s stone_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:4,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 3 run give @s iron_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:5,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 4 run give @s diamond_sword{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:6,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.6,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    
        ### 斧 101 ~ 200

    execute if score $core ui_temp matches 102 run give @s stone_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:6,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 103 run give @s iron_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:7,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 104 run give @s diamond_axe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:8,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.8,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    
        ### 鎌 201 ~ 300

    execute if score $core ui_temp matches 202 run give @s stone_hoe{display:{Name:'{"text":"石の鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:2,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 203 run give @s iron_hoe{display:{Name:'{"text":"鉄の鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:3,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 204 run give @s diamond_hoe{display:{Name:'{"text":"ダイヤモンドの鎌","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"ui_st_weapon1",Amount:4,Operation:0,UUID:[I;2,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"ui_st_weapon2",Amount:-0.4,Operation:1,UUID:[I;2,1,1,2],Slot:"mainhand"}]} 1
    
    ## 防具 1001 ~ 2000

    execute if score $core ui_temp matches 1001 run give @s leather_helmet{display:{Name:'{"text":"革の帽子","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor1",Amount:1,Operation:0,UUID:[I;2,1,2,1],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 1001 run give @s leather_chestplate{display:{Name:'{"text":"革の上着","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor2",Amount:3,Operation:0,UUID:[I;2,1,2,2],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 1001 run give @s leather_leggings{display:{Name:'{"text":"革のズボン","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor3",Amount:2,Operation:0,UUID:[I;2,1,2,3],Slot:"mainhand"}]} 1
    execute if score $core ui_temp matches 1001 run give @s leather_boots{display:{Name:'{"text":"革のブーツ","color":"white","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"ui_st_armor4",Amount:1,Operation:0,UUID:[I;2,1,2,4],Slot:"mainhand"}]} 1
    
    ## 食料 2001 ~ 3000

    execute if score $core ui_temp matches 2001 run give @s melon_slice 8
    
    ## ポーション 3001 ~ 5000

    execute if score $core ui_temp matches 3001 run give @s potion{Potion:"water"} 3
    
    ## 銃火器 10001 ~ 20000

    execute if score $core ui_temp matches 10001 run give @s gunpowder
    execute if score $core ui_temp matches 10002 run give @s minecraft:carrot_on_a_stick{tmw:{id:305,slotable:3,enableQ:1,gun:{name:"IH-1P",dmg:80,bc:1,ua:200,mov:10,range:40,gct1:10,gct2:10,bu:1,ms:1,type:1,png:1,max:1,now:0}},CustomModelData:110301,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 火縄銃の親族","color":"gray","italic":false}]','[{"text":" 弾は一個一個手作業で込める","color":"gray","italic":false}]','[{"text":" 装填可能:[ハンドガンの弾]","color":"green","italic":false}]']},Unbreakable:1b,HideFlags:4}
    execute if score $core ui_temp matches 10003 run give @s minecraft:carrot_on_a_stick{tmw:{id:306,slotable:2,enableQ:1,ammo:{name:"IH-HG-Bullet",max:1,amount:1,type:1,png:1,onetime:1,shottype:2}},CustomModelData:110501,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 一般的なハンドガンの弾","color":"gray","italic":false}]','[{"text":" 小さい割に懐を圧迫する","color":"gray","italic":false}]','[{"text":" 共通規格なのでどの銃にも使用できる","color":"gray","italic":false}]','[{"text":" オフハンドに持ってQキーで装填","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4}
    execute if score $core ui_temp matches 10102 run give @s minecraft:carrot_on_a_stick{tmw:{id:305,slotable:3,enableQ:1,gun:{name:"IH-2P-R",dmg:60,bc:1,ua:250,mov:8,range:30,gct1:10,gct2:10,bu:1,ms:1,type:1,png:2,max:6,now:0}},CustomModelData:110302,display:{Name:'{"text":"Unnamed","color":"white","italic":false}',Lore:['[{"text":" 初期モデルのリボルバー","color":"gray","italic":false}]','[{"text":" 最大６個 変なものを入れると詰まる","color":"gray","italic":false}]','[{"text":" 弾は一個一個手作業で込める","color":"gray","italic":false}]','[{"text":" 装填可能:[ハンドガンの弾]","color":"green","italic":false}]']},Unbreakable:1b,HideFlags:4}

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/function/skill_activate/liner_search