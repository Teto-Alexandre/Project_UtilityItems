
give @p minecraft:carrot_on_a_stick{CustomModelData:111325,tmw:{cg:{only_one:1,oo_draw_effect:{delay_type:0,delay:1,repeat:0,name:'[{"text":"x:熱の魔導書","italic":false,"color":"gold"}]',lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"現在の山札を特殊デッキと入れ替え、ドロー4","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:22,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-10},{target_type:2,effect_type:"create",var:1,list:[      {id:"minecraft:book",tag:{CustomModelData:150005,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:5,particle_laser:0,particle_self:8,effects:[{target_type:2,effect_type:"discard",var:40},{target_type:2,effect_type:"insert",effect_mode:"swap",list:[     {id:"minecraft:gunpowder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:灯","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ与え燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:glowstone_dust",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:5,target_count:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:炶","italic":false,"color":"white"}]',Lore:['[{"text":"ランダムな敵3体に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:nether_brick",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"heal",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:炉","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を2回復し燃焼+2、ドロー1","color":"gray","italic":false}]']}}},{id:"minecraft:glow_berries",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:2,effect_type:"condition_input",input:"health"},{target_type:2,effect_type:"heal",var:2},{condition:{id:1,max:10,continue:1},target_type:2,effect_type:"heal",var:4},{condition:{id:1,max:5,continue:1},target_type:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:燭","italic":false,"color":"white"}]',Lore:['[{"text":"2回復、自身の体力の残量に応じて強化","color":"gray","italic":false}]','[{"text":"【HP:10以下】追加で4回復","color":"gray","italic":false}]','[{"text":"【HP:5以下】全ての敵に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:golden_shovel",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:4},{target_type:2,effect_type:"modify_value",input:"darkness",var:2}]}},HideFlags:255,display:{Name:'[{"text":"5:烙","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージと燃焼+4、自身に暗闇+2","color":"gray","italic":false}]']}}},{id:"minecraft:lava_bucket",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:4,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"6:災","italic":false,"color":"white"}]',Lore:['[{"text":"全員に燃焼+3","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_rod",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"modify_value",input:"burn",var:5},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"7:暁","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に燃焼+5、ドロー2","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_powder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,repeat:9,name:'[{"text":"燦","italic":false,"color":"white"}]',lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]'],effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{target_type:5,effect_type:"modify_value",input:"burn",var_input:{mute:1,name:"condition",mult:-1,add:10}}]}}]}},HideFlags:255,display:{Name:'[{"text":"8:燦","italic":false,"color":"white"}]',Lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]']}}},{id:"minecraft:nether_star",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,name:'[{"text":"燿","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]'],effects:[{target_type:7,effect_type:"condition_input",input:"burn"},{target_type:7,effect_type:"damage",var_input:{name:"condition",mult:2}}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:燿","italic":false,"color":"white"}]',Lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]']}}}     ]},{target_type:2,effect_type:"draw",var:4}]}},HideFlags:1,display:{Name:'[{"text":"5:熱の魔導書","italic":false,"color":"gold"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"現在の山札を特殊デッキと入れ替え、ドロー4","color":"gray","italic":false}]']}}}      ]}]}}},HideFlags:255,display:{Name:'[{"text":"x:熱の魔導書","italic":false,"color":"gold"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"現在の山札を特殊デッキと入れ替え、ドロー4","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]']}}

give @p minecraft:carrot_on_a_stick{CustomModelData:111325,tmw:{cg:{only_one:1,oo_draw_effect:{delay_type:0,delay:1,repeat:-1,cost:0,effects:[{target_type:2,effect_type:"insert",effect_mode:"swap",mute:1,list:[     {id:"minecraft:gunpowder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:灯","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ与え燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:glowstone_dust",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:5,target_count:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:炶","italic":false,"color":"white"}]',Lore:['[{"text":"ランダムな敵3体に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:nether_brick",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"heal",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:炉","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を2回復し燃焼+2、ドロー1","color":"gray","italic":false}]']}}},{id:"minecraft:glow_berries",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:2,effect_type:"condition_input",input:"health"},{target_type:2,effect_type:"heal",var:2},{condition:{id:1,max:10,continue:1},target_type:2,effect_type:"heal",var:4},{condition:{id:1,max:5,continue:1},target_type:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:燭","italic":false,"color":"white"}]',Lore:['[{"text":"2回復、自身の体力の残量に応じて強化","color":"gray","italic":false}]','[{"text":"【HP:10以下】追加で4回復","color":"gray","italic":false}]','[{"text":"【HP:5以下】全ての敵に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:golden_shovel",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:4},{target_type:2,effect_type:"modify_value",input:"darkness",var:2}]}},HideFlags:255,display:{Name:'[{"text":"5:烙","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージと燃焼+4、自身に暗闇+2","color":"gray","italic":false}]']}}},{id:"minecraft:lava_bucket",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:4,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"6:災","italic":false,"color":"white"}]',Lore:['[{"text":"全員に燃焼+3","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_rod",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"modify_value",input:"burn",var:5},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"7:暁","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に燃焼+5、ドロー2","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_powder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,repeat:9,name:'[{"text":"燦","italic":false,"color":"white"}]',lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]'],effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{target_type:5,effect_type:"modify_value",input:"burn",var_input:{mute:1,name:"condition",mult:-1,add:10}}]}}]}},HideFlags:255,display:{Name:'[{"text":"8:燦","italic":false,"color":"white"}]',Lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]']}}},{id:"minecraft:nether_star",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,name:'[{"text":"燿","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]'],effects:[{target_type:7,effect_type:"condition_input",input:"burn"},{target_type:7,effect_type:"damage",var_input:{name:"condition",mult:2}}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:燿","italic":false,"color":"white"}]',Lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]']}}}     ]}]}},HideFlags:1,display:{Name:'[{"text":"5:熱の魔導書","italic":false,"color":"gold"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"現在の山札を特殊デッキと入れ替え、ドロー4","color":"gray","italic":false}]']}}      ,HideFlags:255,display:{Name:'[{"text":"x:永久熱の魔導書","italic":false,"color":"gold"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"常に現在の山札を特殊デッキと入れ替える","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]']}}

## {id:"minecraft:book",tag:{CustomModelData:150005,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:5,particle_laser:0,particle_self:8,effects:[{target_type:2,effect_type:"discard",var:40},{target_type:2,effect_type:"insert",effect_mode:"swap",list:[     {id:"minecraft:gunpowder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:灯","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ与え燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:glowstone_dust",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:5,target_count:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:炶","italic":false,"color":"white"}]',Lore:['[{"text":"ランダムな敵3体に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:nether_brick",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"heal",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:炉","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を2回復し燃焼+2、ドロー1","color":"gray","italic":false}]']}}},{id:"minecraft:glow_berries",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:2,effect_type:"condition_input",input:"health"},{target_type:2,effect_type:"heal",var:2},{condition:{id:1,max:10,continue:1},target_type:2,effect_type:"heal",var:4},{condition:{id:1,max:5,continue:1},target_type:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:燭","italic":false,"color":"white"}]',Lore:['[{"text":"2回復、自身の体力の残量に応じて強化","color":"gray","italic":false}]','[{"text":"【HP:10以下】追加で4回復","color":"gray","italic":false}]','[{"text":"【HP:5以下】全ての敵に燃焼+1","color":"gray","italic":false}]']}}},{id:"minecraft:golden_shovel",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:4},{target_type:2,effect_type:"modify_value",input:"darkness",var:2}]}},HideFlags:255,display:{Name:'[{"text":"5:烙","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージと燃焼+4、自身に暗闇+2","color":"gray","italic":false}]']}}},{id:"minecraft:lava_bucket",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:4,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"6:災","italic":false,"color":"white"}]',Lore:['[{"text":"全員に燃焼+3","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_rod",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"modify_value",input:"burn",var:5},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"7:暁","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に燃焼+5、ドロー2","color":"gray","italic":false}]']}}},{id:"minecraft:blaze_powder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,repeat:9,name:'[{"text":"燦","italic":false,"color":"white"}]',lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]'],effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{target_type:5,effect_type:"modify_value",input:"burn",var_input:{mute:1,name:"condition",mult:-1,add:10}}]}}]}},HideFlags:255,display:{Name:'[{"text":"8:燦","italic":false,"color":"white"}]',Lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]']}}},{id:"minecraft:nether_star",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,name:'[{"text":"燿","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]'],effects:[{target_type:7,effect_type:"condition_input",input:"burn"},{target_type:7,effect_type:"damage",var_input:{name:"condition",mult:2}}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:燿","italic":false,"color":"white"}]',Lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]']}}}     ]},{target_type:2,effect_type:"draw",var:4}]}},HideFlags:1,display:{Name:'[{"text":"5:熱の魔導書","italic":false,"color":"gold"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"現在の山札を特殊デッキと入れ替え、ドロー4","color":"gray","italic":false}]']}}}

## {id:"minecraft:gunpowder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:灯","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ与え燃焼+1","color":"gray","italic":false}]']}}}

## {id:"minecraft:glowstone_dust",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:5,target_count:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:炶","italic":false,"color":"white"}]',Lore:['[{"text":"ランダムな敵3体に燃焼+1","color":"gray","italic":false}]']}}}

## {id:"minecraft:nether_brick",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"heal",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:炉","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を2回復し燃焼+2、ドロー1","color":"gray","italic":false}]']}}}

## {id:"minecraft:glow_berries",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:2,effect_type:"condition_input",input:"health"},{target_type:2,effect_type:"heal",var:2},{condition:{id:1,max:10,continue:1},target_type:2,effect_type:"heal",var:4},{condition:{id:1,max:5,continue:1},target_type:3,effect_type:"modify_value",input:"burn",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:燭","italic":false,"color":"white"}]',Lore:['[{"text":"2回復、自身の体力の残量に応じて強化","color":"gray","italic":false}]','[{"text":"【HP:10以下】追加で4回復","color":"gray","italic":false}]','[{"text":"【HP:5以下】全ての敵に燃焼+1","color":"gray","italic":false}]']}}}

## {id:"minecraft:golden_shovel",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_value",input:"burn",var:4},{target_type:2,effect_type:"modify_value",input:"darkness",var:2}]}},HideFlags:255,display:{Name:'[{"text":"5:烙","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージと燃焼+4、自身に暗闇+2","color":"gray","italic":false}]']}}}

## {id:"minecraft:lava_bucket",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:4,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"6:災","italic":false,"color":"white"}]',Lore:['[{"text":"全員に燃焼+3","color":"gray","italic":false}]']}}}

## {id:"minecraft:blaze_rod",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_self:0,particle_look:8      ,effects:[{target_type:1,effect_type:"modify_value",input:"burn",var:5},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"7:暁","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に燃焼+5、ドロー2","color":"gray","italic":false}]']}}}

## {id:"minecraft:blaze_powder",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,repeat:9,name:'[{"text":"燦","italic":false,"color":"white"}]',lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]'],effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{target_type:5,effect_type:"modify_value",input:"burn",var_input:{mute:1,name:"condition",mult:-1,add:10}}]}}]}},HideFlags:255,display:{Name:'[{"text":"8:燦","italic":false,"color":"white"}]',Lore:['[{"text":"九度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ランダムな敵に反復回数に等しい燃焼を与える","color":"gray","italic":false}]']}}}

## {id:"minecraft:nether_star",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_self:0,particle_look:11      ,effects:[{target_type:1,effect_type:"after_effect",cg:{cost:0,delay:0,delay_type:1,name:'[{"text":"燿","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]'],effects:[{target_type:7,effect_type:"condition_input",input:"burn"},{target_type:7,effect_type:"damage",var_input:{name:"condition",mult:2}}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:燿","italic":false,"color":"white"}]',Lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に燃焼の2倍のダメージ","color":"gray","italic":false}]']}}}

give @p book{tmw:{id:272,type:1,enableQ:1,cg:{cost:30,particle_laser:1,particle_look:11,effects:[{target_type:2,effect_type:"command",command:"data modify storage ui:temp card.command set string storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.display.Name 9 -2"},{target_type:1,effect_type:"command",command:"function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp card"},{target_type:2,effect_type:"command",command:"data modify storage ui:temp card.macro set from storage ui:temp card.command"},{target_type:2,effect_type:"command",command:"function ui:template/macro/say with storage ui:temp card"}]}},HideFlags:255,display:{Name:'[{"text":"30:おなまえ.note","italic":false,"color":"white"}]',Lore:['[{"text":"このアイテムの名前を鍵とする","color":"gray","italic":false}]','[{"text":"標敵に鍵を実行する","color":"gray","italic":false}]']}}
give @p dragon_head{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_look:1002,effects:[{target_type:2,effect_type:"command",command:"data modify storage ui:temp card.macro set from storage ui:temp card.command"},{target_type:2,effect_type:"command",command:"function ui:template/macro/give with storage ui:temp card"},{target_type:2,effect_type:"command",command:"function ui:template/macro/say with storage ui:temp card"}]}},HideFlags:255,display:{Name:'[{"text":"7:龍の頭","italic":false,"color":"white"}]',Lore:['[{"text":"このアイテムの名前を鍵とする","color":"gray","italic":false}]','[{"text":"自身に鍵を与える","color":"gray","italic":false}]']}}
give @p knowledge_book{tmw:{id:272,type:1,enableQ:1,cg:{cost:13,particle_laser:1,particle_look:2,effects:[{target_type:2,effect_type:"command",command:"data remove storage ui:macro temp"},{case:[{target_type:2,effect_type:"command",command:"data modify storage ui:macro input.1 set value \"kill \""},{target_type:9,effect_type:"show_text",text:'{"text":"死神は気が乗らなかったようだ"}'},{target_type:9,effect_type:"show_text",text:'{"text":"死神は退屈そうに寝転がっている"}'},{target_type:9,effect_type:"show_text",text:'{"text":"死神はノートを斜め読みした上で無視した"}'},{target_type:9,effect_type:"show_text",text:'{"text":"死神は席を外しているようだ"}'}]},{target_type:2,effect_type:"command",command:"data modify storage ui:macro input.2 set string storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.display.Name 9 -2"},{target_type:2,effect_type:"command",command:"function ui:template/macro/string_combine with storage ui:macro input"},{target_type:2,effect_type:"command",command:"data modify storage ui:temp card.command set from storage ui:macro temp.NewString"},{target_type:2,effect_type:"command",command:"function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp card"}]}},HideFlags:255,display:{Name:'[{"text":"13:デス.note","italic":false,"color":"white"}]',Lore:['[{"text":"このアイテムの名前を鍵とする","color":"gray","italic":false}]','[{"text":"鍵を殺す ただし死神の気分次第","color":"gray","italic":false}]']}}

give @p redstone{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_look:8,effects:[{target_type:1,effect_type:"command",list:["execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace air","gamemode adventure @s","execute at @s run particle block_marker lava ~ ~ ~ 1 1 1 0 10 force","execute at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 0.5 0"]}]}},HideFlags:255,display:{Name:'[{"text":"4:原初の火","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を燃やす","color":"gray","italic":false}]']}}
give @p ice{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_look:9,effects:[{target_type:1,effect_type:"command",list:["execute at @s run fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~2.5 ~1.5 packed_ice replace air","gamemode adventure @s","execute at @s run particle block_marker packed_ice ~ ~ ~ 1 1 1 0 10 force","execute at @s run playsound block.glass.break player @a ~ ~ ~ 1 0.5 0"]}]}},HideFlags:255,display:{Name:'[{"text":"3:氷漬け","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を氷漬けにする","color":"gray","italic":false}]']}}

give @p repeater{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_look:13,effects:[{target_type:1,effect_type:"command",list:["execute if score @s ui_tmw272_mana_max matches ..9 run scoreboard players add @s ui_tmw272_mana_max 1","execute if score @s ui_tmw272_mana_max matches ..9 run scoreboard players set $count_command_list ui_temp 1","execute if score @s ui_tmw272_health matches ..19 run scoreboard players set @s ui_tmw272_health 20","execute if score @s ui_tmw272_health matches ..19 run scoreboard players set $count_command_list ui_temp 1","scoreboard players add @s ui_tmw272_shield 1"]}]}},HideFlags:255,display:{Name:'[{"text":"5:構文リーダーテスト","italic":false,"color":"white"}]',Lore:['[{"text":"最大マナが9以下なら+1","color":"gray","italic":false}]','[{"text":" 体力が19以下なら20にする","color":"gray","italic":false}]','[{"text":"  シールド+1","color":"gray","italic":false}]']}}

give @p minecraft:enchanted_book{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_self:13,effects:[{target_type:2,effect_type:"discard",var:1},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"command",list:["data merge storage ui:common {input:{Num:-1,Mode:\"block_get\"}}","execute as @e[tag=tmw272_active_match] store result storage ui:common input.Num int 1 run random value 0..8","execute positioned ~ ~-0.5 ~ run function ui:common/item","execute if score $common_success.item ui_temp matches 1.. unless data storage ui:common_result temp.tag.tmw.cg{only_one:1} run data modify storage ui:temp temp.card.effects[1].list[0] merge from storage ui:common_result temp"]},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"create",mute:1,list:[{id:"stone"}]},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'[{"text":"   "},{"selector":"@s"},{"text":"が","color":"gray","italic":false},{"nbt":"temp.tag.display.Name","storage":"ui:common_result","interpret":true,"italic":false},{"text":"を手札に創造した！","color":"gray"}]'}]}},HideFlags:255,display:{Name:'[{"text":"3:外部ライブラリー","italic":false,"color":"white"}]',Lore:['[{"text":"手札を1枚捨て、捨てたなら ▼","color":"gray","italic":false}]','[{"text":"足元のコンテナのスロット1-8にある","color":"gray","italic":false}]','[{"text":" アイテムのどれかを手札として創造する","color":"gray","italic":false}]','[{"text":" ただし","color":"gray","italic":false},{"text":"【唯一】","color":"gold"},{"text":"を持つカードは創造できない","color":"gray"}]']}}
give @p minecraft:bookshelf{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_self:13,effects:[{target_type:2,effect_type:"discard",var:9},{condition:{id:1,min:9,continue:1},target_type:2,effect_type:"command",list:["execute if data block ~ ~-0.5 ~ Items run data modify storage ui:temp temp.card.effects[1].list set from block ~ ~-0.5 ~ Items","execute if data block ~ ~-0.5 ~ CustomName run data modify storage ui:temp temp.card.effects[1].name set from block ~ ~-0.5 ~ CustomName"]},{condition:{id:1,min:9,continue:1},target_type:2,effect_type:"summon",id:"sheep",name:'{"text":"null"}',health:9,mana:9,list:[]}]}},HideFlags:255,display:{Name:'[{"text":"9:デッキアクティベート","italic":false,"color":"white"}]',Lore:['[{"text":"手札を9枚捨て、9枚捨てたなら ▼","color":"gray","italic":false}]','[{"text":"足元のコンテナをデッキとする","color":"gray","italic":false}]','[{"text":" 羊を自らのチームで召喚する","color":"gray","italic":false}]','[{"text":"<コンテナ名> HPM:9,MPM:9","color":"gray","italic":false}]']}}
