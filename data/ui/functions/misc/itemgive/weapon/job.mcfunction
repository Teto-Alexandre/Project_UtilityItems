give @p jukebox{display:{Name:'{"text":"pathing_test","color":"white","bold":true}',Lore:['{"text":"debug","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,tmw:{id:18,type:1,skill:{function:{first:[{path:"pathing_test/first"}],constant:[{type:"",path:"pathing_test/passive"},{type:"q",path:"pathing_test/drop_normal"},{type:"qs",path:"pathing_test/drop_sneak"},{type:"f",path:"pathing_test/offhand_normal"},{type:"fs",path:"pathing_test/offhand_sneak"},{type:"s",path:"pathing_test/sneak"},{type:"sc",path:"pathing_test/sneak_charge"}]}}}} 1
give @p note_block{display:{Name:'{"text":"command_list_test","color":"white","bold":true}',Lore:['{"text":"debug2","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,tmw:{id:18,type:1,skill:{function:{first:[{list:["say a","say a","say bbb"]}],constant:[{type:"q",list:["say パァ"]}]}}}} 1

# テンプレ
give @p acacia_boat{tmw:{id:18,type:1,skill:{function:{first:[{list:["say a","say a","say bbb"]}],constant:[{type:"q",ct:40,list:["say パァ"]}]}}}} 1
give @p bow{tmw:{id:18,type:1,skill:{function:{first:[{list:["scoreboard objectives add test dummy"]}],constant:[{type:"u",path:"ensyutu_bow/main"},{type:"ds",list:["say ダブルスニーク"]}]}}}} 1

# 1
give @p iron_shovel{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"メイス","color":"white","bold":true}',Lore:['{"text":"Q: 懺悔","color":"gold","italic":false}','{"text":"S: 治癒","color":"gold","italic":false}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-524821458,678973384,-1206402992,887018265],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:1,UUID:[I;-1605389240,-641709763,-2018201522,-607787234],Slot:"mainhand"}],tmw:{id:18,type:1,skill:{function:{first:[{list:["say メイス：ロード"]}],constant:[{type:"q",ct:100,list:["execute as @e[distance=0.1..10] at @s run tp @s ~ ~ ~ ~ 90","playsound minecraft:block.anvil.place player @a[distance=..10] ~ ~ ~ 1 0.5"]},{type:"s",ct:20,mute:1,list:["effect give @s minecraft:regeneration 1 2 true","particle dust 0.5 1 0.5 ~ ~1 ~ 0.5 0.5 0.5 0 10 force"]}]}}}} 1

# 2
give @p bow{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"ボウ","color":"white"}',Lore:['{"text":"Q: 上昇気流","color":"gray","italic":false}','{"text":"S: 洞察","color":"gray","italic":false}']},Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-524821458,678973384,-1206402992,887018265],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.6,Operation:1,UUID:[I;-1605389240,-641709763,-2018201522,-607787234],Slot:"mainhand"}],tmw:{id:18,type:1,skill:{function:{first:[{list:["say ボウ：ロード"]}],constant:[{type:"q",ct:300,list:["particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @s","playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 1.5","effect give @s minecraft:levitation 1 20 true"]},{type:"s",ct:20,mute:1,list:["effect give @p[distance=1..] minecraft:glowing 1 0 false"]},{list:["effect clear @s minecraft:slow_falling","effect give @s minecraft:slowness 1 0 true","execute store result score $temp ui_temp run clear @s arrow 0","execute if score $temp ui_temp matches 0 run give @s arrow"]},{type:"u",list:["effect give @s minecraft:slow_falling 1 0 true"]}]}}}} 1

# 3
give @p feather{HideFlags:4,Unbreakable:1,display:{Name:'{"text":"ナイフ","color":"white","bold":false,"italic":true}',Lore:['{"text":"Q: 透明化","color":"white","italic":false}','{"text":"S: チャージジャンプ","color":"white","italic":false}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-524821458,678973384,-1206402992,887018265],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.2,Operation:1,UUID:[I;-1605389240,-641709763,-2018201522,-607787234],Slot:"mainhand"}],tmw:{id:18,type:1,skill:{function:{first:[{list:["say ナイフ：ロード"]}],constant:[{type:"q",ct:200,list:["playsound minecraft:entity.blaze.death player @s ~ ~ ~ 1 0.5","effect give @s minecraft:invisibility 5 1 false","effect give @s minecraft:weakness 5 10 true","effect give @s minecraft:speed 5 1 true","effect give @s minecraft:jump_boost 5 1 true"]},{type:"sc",ct:20,mute:1,list:["playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 2","particle sweep_attack ~ ~0.5 ~ 0 0 0 0 1 force","effect give @s[scores={ui_stc=..10}] minecraft:jump_boost 1 3 false","effect give @s[scores={ui_stc=11..20}] minecraft:jump_boost 1 6 false","effect give @s[scores={ui_stc=21..}] minecraft:jump_boost 1 10 false"]}]}}}} 1

# 4
give @p netherite_axe{HideFlags:5,Unbreakable:1,display:{Name:'{"text":"アクス","color":"white","bold":false,"italic":true}',Lore:['{"text":"Q: 攻撃力強化","color":"white","italic":false}','{"text":"S: 防御","color":"white","italic":false}']},Enchantments:[{id:"minecraft:sharpness",lvl:19s}],tmw:{id:18,type:1,skill:{function:{first:[{list:["say アクス：ロード"]}],constant:[{type:"q",ct:400,list:["playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 0.1","effect give @s minecraft:strength 10 1 false","effect give @s minecraft:slowness 1 5 true"]},{list:["effect clear @s minecraft:resistance","effect give @s minecraft:mining_fatigue 1 8 true"]},{type:"s",list:["effect give @s minecraft:resistance 1 1 false"]}]}}}} 1

# 5
give @p wooden_sword{HideFlags:5,Unbreakable:1,display:{Name:'{"text":"ソード","color":"white","bold":false,"italic":true}',Lore:['{"text":"Q: 煙幕","color":"red","italic":false}','{"text":"S: 火の刻印","color":"red","italic":false}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1501572795,-848871324,-1256392884,725124055],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.2,Operation:1,UUID:[I;2039060602,1848394035,-1753802916,-267243871],Slot:"mainhand"}],tmw:{id:18,type:1,skill:{function:{first:[{list:["say ソード：ロード","scoreboard objectives add test dummy"]}],constant:[{type:"q",ct:400,list:["effect give @s minecraft:fire_resistance 1 0 true","playsound minecraft:entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 1 0.1","scoreboard players set @s test 100"]},{list:["scoreboard players remove @s test 1","execute if score @s test matches 0.. run particle minecraft:angry_villager ~ ~ ~ 2 2 2 1 500 force @a[distance=0.1..]"]},{type:"ds",ct:200,list:["playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.2 0","execute anchored eyes run particle flame ^ ^ ^2 0.5 0.5 0.5 0 10 force","execute anchored eyes run summon arrow ^ ^ ^ {Fire:60,life:24000,damage:0.5d,Tags:[\"temp_acc\"],SoundEvent:\"entity.blaze.shoot\"}","execute anchored eyes positioned ^ ^ ^ as @e[tag=temp_acc,sort=nearest,limit=1] run function ui:template/accelerator/1.5"]}]}}}} 1

# クイックチャット
give @p writable_book{HideFlags:5,Unbreakable:1,display:{Name:'{"text":"クイックチャット","color":"yellow","bold":false,"italic":false}',Lore:['{"text":" Q  : 1ページ目の内容","color":"white","italic":false}','{"text":"Q+S: 2ページ目の内容","color":"white","italic":false}','{"text":" F  : 3ページ目の内容","color":"white","italic":false}','{"text":"F+S: 4ページ目の内容","color":"white","italic":false}','{"text":"S>S: 5ページ目の内容","color":"white","italic":false}','{"text":"※改行をしないでください","color":"red","bold": true,"italic":false}']},tmw:{id:18,type:1,skill:{function:{first:[{list:[""]}],constant:[{type:"q",ct:10,list:["data modify storage ui:temp skill.text set string entity @s SelectedItem.tag.pages[0] 0","function ui:tmw/18/each/quick_chat with storage ui:temp skill"]},{type:"qs",ct:10,list:["data modify storage ui:temp skill.text set string entity @s SelectedItem.tag.pages[1] 0","function ui:tmw/18/each/quick_chat with storage ui:temp skill"]},{type:"f",ct:10,list:["data modify storage ui:temp skill.text set string entity @s SelectedItem.tag.pages[2] 0","function ui:tmw/18/each/quick_chat with storage ui:temp skill"]},{type:"fs",ct:10,list:["data modify storage ui:temp skill.text set string entity @s SelectedItem.tag.pages[3] 0","function ui:tmw/18/each/quick_chat with storage ui:temp skill"]},{type:"ds",ct:10,list:["data modify storage ui:temp skill.text set string entity @s SelectedItem.tag.pages[4] 0","function ui:tmw/18/each/quick_chat with storage ui:temp skill"]}]}}}} 1

#execute if entity @s[x_rotation=-90..0]
#execute if entity @s[x_rotation=0..90]