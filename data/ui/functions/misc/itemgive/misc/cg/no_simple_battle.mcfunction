give @p minecraft:jukebox{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:2,effect_type:"insert",var:3,list:[             {id:"paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:当たりくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー1","color":"gray","italic":false}]']}}},          {id:"paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:当たりくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー1","color":"gray","italic":false}]']}}},           {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}},           {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}},           {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}},         {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}},            {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}}             ]}]}},HideFlags:1,display:{Name:'[{"text":"0:カード挿入テスト","italic":false,"color":"white"}]',Lore:['[{"text":"特殊デッキから山札に3枚追加する","color":"gray","italic":false}]','[{"text":"2 x 0:当たりくじ(ドロー1)","color":"gray","italic":false}]','[{"text":"5 x 0:ハズレくじ(自身1ダメージ)","color":"gray","italic":false}]']}}

#give @p minecraft:paper{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:当たりくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー1","color":"gray","italic":false}]']}}
# {id:"paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:当たりくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー1","color":"gray","italic":false}]']}}}
give @p minecraft:map{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}
# {id:"map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}}

give @p minecraft:filled_map{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:0,particle_self:2,particle_look:0,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"大ハズレくじ","italic":false,"color":"white"}]',lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:2,effects:[{target_type:2,effect_type:"damage",var:1}]}     ,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:大ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]','[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}
# {id:"minecraft:filled_map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:0,particle_self:2,particle_look:0,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"大ハズレくじ","italic":false,"color":"white"}]',lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:2,effects:[{target_type:2,effect_type:"damage",var:1}]}     ,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:大ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]','[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}}
give @p minecraft:tripwire_hook{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"生命の借用","italic":false,"color":"white"}]',lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"9回復","color":"gray","italic":false}]','[{"text":" 開幕 ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]','[{"text":"自身に10ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:2,effect_type:"heal",var:9},{target_type:2,effect_type:"after_effect",cg:         {delay_type:1,delay:0,repeat:-1,name:'[{"text":"取り立て","italic":false,"color":"gray"}]',lore:['[{"text":" 開幕 ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:0,effects:[{target_type:2,effect_type:"damage",var:1}]}        }]}     ,effects:[{target_type:2,effect_type:"heal",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:生命の借用/契約破棄","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"9回復","color":"gray","italic":false}]','[{"text":" 開幕 ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]','[{"text":"1回復","color":"gray","italic":false}]']}}

give @p minecraft:note_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:1,effect_type:"insert",effect_mode:"prepend",var:1,list:[             {id:"paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:当たりくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー1","color":"gray","italic":false}]']}}}             ]}]}},HideFlags:1,display:{Name:'[{"text":"3:カード挿入テスト2","italic":false,"color":"white"}]',Lore:['[{"text":"標敵の山札の一番上に以下のカードを追加","color":"gray","italic":false}]','[{"text":"0:当たりくじ(ドロー1)","color":"gray","italic":false}]']}}

give @p black_wool{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"create",var:1,list:[             {id:"minecraft:filled_map",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:0,particle_self:2,particle_look:0,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"大ハズレくじ","italic":false,"color":"white"}]',lore:['[{"text":"自身に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:2,effects:[{target_type:2,effect_type:"damage",var:1}]}     ,effects:[{target_type:2,effect_type:"damage",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:大ハズレくじ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"自身に1ダメージ","color":"gray","italic":false}]','[{"text":"自身に1ダメージ","color":"gray","italic":false}]']}}}             ]}]}},HideFlags:1,display:{Name:'[{"text":"3:大ハズレくじの創造","italic":false,"color":"white"}]',Lore:['[{"text":"手札に以下のカードを創造","color":"gray","italic":false}]','[{"text":"2:大ハズレくじ（自身に1ダメージx2）","color":"gray","italic":false}]']}}

give @p minecraft:wither_rose{tmw:{cg:{draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"呪イバラ","italic":false,"color":"white"}]',lore:['[{"text":"自身に呪い+1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:2,effects:[{target_type:2,effect_type:"modify_value",input:"curse",var:1}]}     }},HideFlags:255,display:{Name:'[{"text":"x:呪イバラ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"自身に呪い+1","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]']}}

# give @p minecraft:magenta_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"after_effect",cg:{delay:20,delay_base:20,repeat:999,name:'[{"text":"追撃","italic":false,"color":"white"}]',lore:['[{"text":"⌚1 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_look:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,min:1},target_type:2,effect_type:"mana",var:10}]}}]}},HideFlags:1,display:{Name:'[{"text":"20:永遠の追撃","italic":false,"color":"white"}]',Lore:['[{"text":"永続 ","color":"yellow","italic":false},{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}

give @p minecraft:slime_ball{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:2,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_value",input:"slowness",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:スライムシューター","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージと鈍足+1","color":"gray","italic":false}]']}}
give @p minecraft:rotten_flesh{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:0,particle_look:1002,effects:[{target_type:1,effect_type:"heal",var:1},{target_type:1,effect_type:"modify_value",input:"hunger",var:2}]}},HideFlags:255,display:{Name:'[{"text":"4:満たされぬ空腹","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を1回復と空腹+2","color":"gray","italic":false}]']}}
give @p minecraft:golden_sword{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,particle_laser:1,particle_self:1001,particle_look:8,effects:[{target_type:1,effect_type:"damage",var:3},{target_type:1,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"7:フレイムローズ","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を3ダメージと燃焼+3","color":"gray","italic":false}]']}}
give @p minecraft:cyan_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:0,particle_self:10,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"speed",var:3}]}},HideFlags:1,display:{Name:'[{"text":"3:テストデバッグ3Δ","italic":false,"color":"white"}]',Lore:['[{"text":"加速+3","color":"gray","italic":false}]']}}

# give @p minecraft:cauldron{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:0,particle_self:10,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"speed",var:3}]}},HideFlags:1,display:{Name:'[{"text":"0:闇鍋","italic":false,"color":"white"}]',Lore:['[{"text":"加速+3","color":"gray","italic":false}]']}}

# give @p minecraft:cornflower{tmw:{cg:{draw_effect:     {delay_type:0,delay:2,repeat:0,name:'[{"text":"青イバラ","italic":false,"color":"white"}]',lore:['[{"text":"ランダムな敵の手札を捨てる","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_target:2,effects:[{target_type:5,effect_type:"discard",var:1}]}     }},HideFlags:255,display:{Name:'[{"text":"x:青イバラ","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー ","color": "green","italic": false},{"text":"ランダムな敵の手札を捨てる","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]']}}

give @p minecraft:command_block{CustomModelData:191001,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:15,particle_laser:0,particle_self:15,particle_look:0,oo_draw_effect:     {delay_type:0,delay:1,repeat:0,name:'["",{"text":"【唯一】","bold":true,"italic":false,"color":"gold"},{"text":"黒穹にその身を","italic":false,"color":"white"}]',lore:['[{"text":"HP-10 再生+3 耐性+3","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:15,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-10},{target_type:2,effect_type:"modify_value",input:"regeneration",var:3},{target_type:2,effect_type:"modify_value",input:"resistance",var:3}]}      ,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"黒穹にその身を","italic":false,"color":"white"}]',lore:['[{"text":"耐性+1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:15,effects:[{target_type:2,effect_type:"modify_value",input:"resistance",var:1}]}      ,effects:[{target_type:2,effect_type:"draw",var:5},{target_type:2,effect_type:"modify_value",input:"regeneration",var:3},{target_type:2,effect_type:"modify_value",input:"resistance",var:3}]}},HideFlags:1,display:{Name:'[{"text":"15:黒穹にその身を","italic":false,"color":"white"}]',Lore:['[{"text":"唯一 ","color":"gold","italic":false},{"text":"開戦 ","color":"green","italic":false},{"text":"HP-10 再生+3 耐性+3","color":"gray","italic":false}]','[{"text":"ドロー ","color":"green","italic":false},{"text":"耐性+1","color":"gray","italic":false}]','[{"text":"5ドロー 再生+3 耐性+3","color":"gray","italic":false}]']}}

# give @p minecraft:carrot_on_a_stick{CustomModelData:180096,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:6,particle_laser:1,particle_self:1001,particle_look:19      ,effects:[{target_type:1,effect_type:"damage",rand:{min:6,max:10}},{target_type:1,effect_type:"modify_value",input:"darkness",var:3},{target_type:2,effect_type:"mana",var:3}]}},HideFlags:1,display:{Name:'[{"text":"6:秒針","italic":false,"color":"green"}]',Lore:['[{"text":"標敵に6-10ダメージ与え暗闇+3","color":"gray","italic":false}]','[{"text":"自身のマナ+3","color":"gray","italic":false}]']}}
# {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:180096,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:6,particle_laser:1,particle_self:1001,particle_look:19      ,effects:[{target_type:1,effect_type:"damage",rand:{min:6,max:10}},{target_type:1,effect_type:"modify_value",input:"darkness",var:3},{target_type:2,effect_type:"mana",var:3}]}},HideFlags:1,display:{Name:'[{"text":"6:秒針","italic":false,"color":"green"}]',Lore:['[{"text":"標敵に6-10ダメージ与え暗闇+3","color":"gray","italic":false}]','[{"text":"自身のマナ+3","color":"gray","italic":false}]']}}}
give @p minecraft:lime_dye{tmw:{cg:{only_one:1,oo_draw_effect:     {delay_type:0,delay:1,repeat:0,name:'["",{"text":"【唯一】","bold":true,"italic":false,"color":"gold"},{"text":"静寂","italic":false,"color":"white"}]',lore:['[{"text":"唯一 ","color":"gold","italic":false},{"text":"開戦 ","color":"green","italic":false},{"text":"HP-10 手札に以下のカードを創造","color":"gray","italic":false}]','[{"text":"「6:秒針」(唯一、6-10ダメージ+暗闇3、マナ3回復)","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]'],cost:0,particle_laser:0,particle_self:22,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-10},{target_type:2,effect_type:"create",var:1,list:[      {id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:180096,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:6,particle_laser:1,particle_self:1001,particle_look:19      ,effects:[{target_type:1,effect_type:"damage",rand:{min:6,max:10}},{target_type:1,effect_type:"modify_value",input:"darkness",var:3},{target_type:2,effect_type:"mana",var:3}]}},HideFlags:1,display:{Name:'[{"text":"6:秒針","italic":false,"color":"green"}]',Lore:['[{"text":"標敵に6-10ダメージ与え暗闇+3","color":"gray","italic":false}]','[{"text":"自身のマナ+3","color":"gray","italic":false}]']}}}      ]}]}     }},HideFlags:255,display:{Name:'[{"text":"x:静寂","italic":false,"color":"white"}]',Lore:['[{"text":"唯一 ","color":"gold","italic":false},{"text":"開戦 ","color":"green","italic":false},{"text":"HP-10 手札に以下のカードを創造","color":"gray","italic":false}]','[{"text":"「6:秒針」(唯一、6-10ダメージ+暗闇3、マナ3回復)","color":"gray","italic":false}]','[{"text":"深刻なエラー：ドロー時に消滅","color":"red","italic":false}]']}}

give @p minecraft:paper{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:4,effect_type:"modify_value",input:"trade",var:1}]}},HideFlags:255,display:{Name:'[{"text":"0:取引に応じる","italic":false,"color":"white"}]',Lore:['[{"text":"取引+1","color":"gray","italic":false}]']}}
# {id:"minecraft:paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:4,effect_type:"modify_value",input:"trade",var:1}]}},HideFlags:255,display:{Name:'[{"text":"0:取引に応じる","italic":false,"color":"white"}]',Lore:['[{"text":"取引+1","color":"gray","italic":false}]']}}}
give @p minecraft:emerald{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:0,particle_self:17,particle_look:0,effects:[{target_type:1,effect_type:"create",var:1,list:[{id:"minecraft:paper",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:4,effect_type:"modify_value",input:"trade",var:1}]}},HideFlags:255,display:{Name:'[{"text":"0:取引に応じる","italic":false,"color":"white"}]',Lore:['[{"text":"取引+1","color":"gray","italic":false}]']}}}]},{target_type:1,effect_type:"after_effect",cg:{delay_type:2,delay:3,repeat:0,name:'[{"text":"商談","italic":false,"color":"white"}]',lore:['[{"text":"標敵の手札に「0:取引に応じる」を創造","color":"gray","italic":false}]','[{"text":"閉幕 ","color":"green","italic":false},{"text":"以下の効果を発動","color":"gray","italic":false}]','[{"text":"取引に応じた - 閉幕時の標敵に6ダメージ","color":"gray","italic":false}]','[{"text":"  自身の最大マナ-1 標敵の最大マナ+1","color":"gray","italic":false}]','[{"text":"取引に応じない - 標敵に1ダメージ 自身を1回復","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:17,effects:[{target_type:7,effect_type:"condition_input",input:"trade"},{condition:{id:1,min:1,continue:1},target_type:1,effect_type:"damage",var:6},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"mana_max",var:-1},{condition:{id:1,min:1,continue:1},target_type:7,effect_type:"mana_max",var:1},{condition:{id:1,max:0,continue:1},target_type:7,effect_type:"damage",var:1},{condition:{id:1,max:0},target_type:2,effect_type:"heal",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"3:商談","italic":false,"color":"white"}]',Lore:['[{"text":"標敵の手札に「0:取引に応じる」を創造","color":"gray","italic":false}]','[{"text":"閉幕 ","color":"green","italic":false},{"text":"以下の効果を発動","color":"gray","italic":false}]','[{"text":"取引に応じた - 閉幕時の標敵に7ダメージ","color":"gray","italic":false}]','[{"text":"  自身の最大マナ-1 標敵の最大マナ+1","color":"gray","italic":false}]','[{"text":"取引に応じない - 標敵に1ダメージ 自身を1回復","color":"gray","italic":false}]']}}