give @p minecraft:light_blue_carpet{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_target:4,effects:[{target_type:1,effect_type:"heal",var:1},{target_type:1,effect_type:"modify_value",input:"soul_break",var:1},{target_type:1,effect_type:"condition_input",input:"soul_break"},{condition:{id:1,min:20},target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:蝕魂","italic":false,"color":"white"}]',Lore:['[{"text":"標敵を1回復し【魂壊】+1","color":"gray","italic":false}]','[{"text":"【標敵の魂壊:20】ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:blue_carpet{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_target:4,effects:[{target_type:1,effect_type:"modify_value",input:"soul_break",var:1},{target_type:1,effect_type:"condition_input",input:"soul_break",mute:1},{condition:{id:1,min:10},target_type:1,effect_type:"modify_value",input:"soul_break",var:1},{target_type:1,effect_type:"condition_input",input:"soul_break",mute:1},{condition:{id:1,min:20},target_type:1,effect_type:"modify_value",input:"soul_break",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:壊魂","italic":false,"color":"white"}]',Lore:['[{"text":"標敵の【魂壊】+1","color":"gray","italic":false}]','[{"text":"【標敵の魂壊:10】さらに魂壊+1","color":"gray","italic":false}]','[{"text":"【標敵の魂壊:20】さらに魂壊+1","color":"gray","italic":false}]']}}
give @p minecraft:light_blue_wool{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_target:4,effects:[{target_type:1,effect_type:"modify_value",input:"soul_break",var:1},{target_type:1,effect_type:"condition_input",input:"soul_break"},{target_type:2,effect_type:"modify_value",input:"regeneration",var:1},{target_type:2,effect_type:"condition_input",input:"soul_break"},{condition:{id:1,min:1},target_type:2,effect_type:"modify_value",input:"soul_break",var:-1}]}},HideFlags:255,display:{Name:'[{"text":"3:破魂","italic":false,"color":"white"}]',Lore:['[{"text":"標敵の【魂壊】+1","color":"gray","italic":false}]','[{"text":"自身に【再生】+1","color":"gray","italic":false}]','[{"text":"自身の【魂壊】が1以上なら1減少","color":"gray","italic":false}]']}}
give @p minecraft:prismarine_shard{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_target:4,effects:[{target_type:1,effect_type:"modify_value",input:"soul_break",var:2},{target_type:1,effect_type:"damage",var:3},{target_type:2,effect_type:"modify_value",input:"soul_break",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:穿魂光線","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に【魂壊】+2、3ダメージ","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+2","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:prismarine_crystals{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_target:4,effects:[{target_type:2,effect_type:"heal",var:10},{target_type:2,effect_type:"modify_value",input:"soul_break",var:3},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"5:即時再生","italic":false,"color":"white"}]',Lore:['[{"text":"自身を10回復","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+3","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:prismarine_wall{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,particle_laser:1,particle_target:4,effects:[{target_type:2,effect_type:"modify_value",input:"shield",var:10},{target_type:2,effect_type:"modify_value",input:"shield_next",var:10},{target_type:2,effect_type:"modify_value",input:"soul_break",var:4},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"5:緩衝防壁","italic":false,"color":"white"}]',Lore:['[{"text":"【シールド】【待機シールド】+10","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+4","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:light_blue_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_self:49,effects:[{target_type:3,effect_type:"damage",var:8},{target_type:2,effect_type:"modify_value",input:"soul_break",var:10},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"8:崩壊波動","italic":false,"color":"white"}]',Lore:['[{"text":"全ての敵に8ダメージ","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+10","color":"gray","italic":false}]','[{"text":"ドロー2","color":"gray","italic":false}]']}}
give @p minecraft:wooden_sword{tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:9,particle_laser:1,particle_target:4,effects:[{target_type:3,effect_type:"modify_value",input:"soul_break",var:3},{target_type:2,effect_type:"draw",var:1},{target_type:2,effect_type:"condition_input",input:"soul_break"},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"soul_break",var:-1},{condition:{id:1,min:2,continue:1},target_type:2,effect_type:"modify_value",input:"soul_break",var:-1},{condition:{id:1,min:3},target_type:2,effect_type:"modify_value",input:"soul_break",var:-1}]}},HideFlags:255,display:{Name:'[{"text":"9:試作魔剣二号[魂]","italic":false,"color":"aqua"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"全ての敵の【魂壊】+3","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]','[{"text":"自身の【魂壊】が1以上なら1減少","color":"gray","italic":false}]','[{"text":"この効果を3回繰り返す","color":"gray","italic":false}]']}}

give @p minecraft:magenta_carpet{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,npc_use_for_allies:1,particle_laser:1,particle_target:45,effects:[{target_type:8,effect_type:"modify_value",input:"dodge_next",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:元影","italic":false,"color":"white"}]',Lore:['[{"text":"標敵と自分の【待機回避】+1","color":"gray","italic":false}]']}}
give @p minecraft:purple_carpet{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_target:45,effects:[{target_type:1,effect_type:"draw",var:1},{target_type:1,effect_type:"modify_value",input:"nausea",var:2}]}},HideFlags:255,display:{Name:'[{"text":"2:歪転","italic":false,"color":"white"}]',Lore:['[{"text":"標敵にドロー1、【酩酊】+2","color":"gray","italic":false}]']}}
give @p minecraft:magenta_wool{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_target:45,effects:[{target_type:1,effect_type:"modify_value",input:"strength",var:-1},{target_type:1,effect_type:"modify_value",input:"nausea",var:1},{target_type:1,effect_type:"after_effect",effect_mode:"give",cg:{cost:{amount:0,bypass:1},delay:1,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-1}]}}]}},HideFlags:255,display:{Name:'[{"text":"4:幻影","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に【攻撃力】-1【酩酊】+1","color":"gray","italic":false}]','[{"text":"さらに敵の体力を1減少させる","color":"gray","italic":false}]']}}
give @p minecraft:popped_chorus_fruit{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_target:45,effects:[{target_type:2,effect_type:"modify_value",input:"dodge",var:4},{target_type:2,effect_type:"modify_value",input:"soul_break",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:空間移動","italic":false,"color":"white"}]',Lore:['[{"text":"自身に【回避】+4、【魂壊】+2","color":"gray","italic":false},{"text":" ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:purple_stained_glass_pane{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_target:45,effects:[{target_type:2,effect_type:"create",var:1,list:[{id:"minecraft:purpur_pillar",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,effects:[{target_type:2,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"時空移動","italic":false,"color":"white"}]',lore:['[{"text":"開幕 攻撃力+1、透明化+1","color":"gray","italic":false}]'],particle_self:45,effects:[{target_type:2,effect_type:"modify_value",input:"strength",var:1},{target_type:2,effect_type:"modify_value",input:"invisible",var:1}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:6}]}},HideFlags:255,display:{Name:'[{"text":"4:時空移動","italic":false,"color":"white"}]',Lore:['[{"text":"魂壊+6、開幕 攻撃力+1、透明化+1","color":"gray","italic":false}]']}}},{id:"minecraft:chorus_flower",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_look:45,effects:[{target_type:1,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"時空切断","italic":false,"color":"white"}]',lore:['[{"text":"開幕 敵に魂壊+10、10ダメージ","color":"gray","italic":false}]'],particle_target:48,effects:[{target_type:7,effect_type:"modify_value",input:"soul_break",var:10},{target_type:7,effect_type:"damage",var:10}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:12}]}},HideFlags:255,display:{Name:'[{"text":"8:時空切断","italic":false,"color":"white"}]',Lore:['[{"text":"魂壊+12、開幕 標敵に魂壊+10、10ダメージ","color":"gray","italic":false}]']}}}]}]}},HideFlags:255,display:{Name:'[{"text":"3:歪曲光線","italic":false,"color":"white"}]',Lore:['[{"text":"手札に以下のカードのうち1枚を加える","color":"gray","italic":false}]','[{"text":"・4:時空移動（魂壊+6、開幕 攻撃力+1、透明化+1）","color":"gray","italic":false}]','[{"text":"・8:時空切断（魂壊+12、開幕 敵に魂壊+10、10ダメージ）","color":"gray","italic":false}]']}}
give @p minecraft:pearlescent_froglight{tmw:{id:272,type:1,enableQ:1,cg:{cost:{amount:5,type:2,mods:[{name:"soul_break",min:1}]},particle_laser:1,particle_target:45,effects:[{target_type:4,effect_type:"after_effect",effect_mode:"give",cg:{cost:{amount:0,bypass:1},delay:1,effects:[{target_type:2,effect_type:"condition_input",input:"nausea"},{condition:{id:1,max:0,continue:1},target_type:2,effect_type:"modify_value",input:"health",var:3},{condition:{id:1,min:1},target_type:2,effect_type:"modify_value",input:"health",var:-3}]}}]}},HideFlags:255,display:{Name:'[{"text":"5:酩滅遷移","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【魂壊】が1以上","color":"gray","italic":false}]','[{"text":"全てのプレイヤーに以下の効果を与える","color":"gray","italic":false}]','[{"text":"【酩酊】が0以下なら体力が3増加","color":"gray","italic":false}]','[{"text":"【酩酊】が1以上なら体力が3減少","color":"gray","italic":false}]']}}
give @p minecraft:end_rod{tmw:{id:272,type:1,enableQ:1,cg:{cost:{amount:7,type:2,mods:[{name:"soul_break",min:1}]},particle_laser:1,particle_target:45,effects:[{target_type:1,effect_type:"condition_input",input:"nausea"},{condition:{id:1,min:1},target_type:1,effect_type:"after_effect",effect_mode:"give",cg:{cost:{amount:0,bypass:1},delay:10,delay_base:1,repeat:8,particle_self:1,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-1}]}}]}},HideFlags:255,display:{Name:'[{"text":"7:無元斬消","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【魂壊】が1以上","color":"gray","italic":false}]','[{"text":"標敵の【酩酊】が1以上なら以下の効果を与える","color":"gray","italic":false}]','[{"text":" 自身の体力を1減らす","color":"gray","italic":false}]','[{"text":" この効果を8回繰り返す","color":"gray","italic":false}]']}}
give @p minecraft:wooden_sword{tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:9,particle_laser:1,particle_target:45,effects:[{target_type:2,effect_type:"draw",var:1},{target_type:3,effect_type:"damage",var:4},{target_type:3,effect_type:"modify_value",input:"nausea",var:2},{target_type:3,effect_type:"after_effect",effect_mode:"give",cg:{cost:{amount:0,bypass:1},delay:1,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-1}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:試作魔剣一号[魔]","italic":false,"color":"light_purple"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"ドロー1、全ての敵に4ダメージ、【酩酊】+2","color":"gray","italic":false}]','[{"text":"さらに敵の体力を1減少させる","color":"gray","italic":false}]']}}

give @p orange_carpet{HideFlags:1,display:{Lore:['[{"text":"三幕後-開幕 ","color":"green","italic":false},{"text":"標敵に【燃焼】+1","color":"gray","italic":false}]'], Name:'[{"text":"1:種火","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[{target_type:1,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:3,name:'[{"text":"種火","italic":false,"color":"white"}]',lore:['[{"text":"三幕後-開幕 ","color":"green","italic":false},{"text":"標敵に【燃焼】+1","color":"gray","italic":false}]'],cost:0,particle_laser:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"modify_value",type:"particle",input:"target",var:8},{condition:{id:1,max:1},target_type:7,effect_type:"modify_value",input:"burn",var:1}]}}], cost: 1}, type: 1}}
give @p red_carpet{HideFlags:1,display:{Lore:['[{"text":"標敵に【燃焼】+1","color":"gray","italic":false}]','[{"text":"【燃焼:3】1回復","color":"gray","italic":false}]','[{"text":"【燃焼:6】ドロー1","color":"gray","italic":false}]'], Name:'[{"text":"2:円熱","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{particle_look:8,particle_laser:1,effects:[{target_type:1,effect_type:"modify_value",input:"burn",var:1},{target_type:1,effect_type:"condition_input",input:"burn"},{condition:{id:1,min:3,continue:1},target_type:2,effect_type:"heal",var:1},{condition:{id:1,min:6},target_type:2,effect_type:"draw",var:1}], cost: 2}, type: 1}}
give @p orange_wool{HideFlags:1,display:{Lore:['[{"text":"二幕後-開幕 ","color":"green","italic":false},{"text":"標敵に2ダメージ、【攻撃力】-2","color":"gray","italic":false}]'], Name:'[{"text":"3:崩撃","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[{target_type:1,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:2,name:'[{"text":"崩撃","italic":false,"color":"white"}]',lore:['[{"text":"二幕後-開幕 ","color":"green","italic":false},{"text":"標敵に2ダメージ、【攻撃力】-2","color":"gray","italic":false}]'],cost:0,particle_laser:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"modify_value",type:"particle",input:"target",var:8},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"damage",var:2},{condition:{id:1,max:1},target_type:7,effect_type:"modify_value",input:"strength",var:-2}]}}], cost: 3}, type: 1}}
give @p nether_brick_wall{HideFlags:1,display:{Lore:['[{"text":"自身に【火炎耐性】+1、【待機シールド】+5","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+2","color":"gray","italic":false}]'], Name:'[{"text":"4:紅蓮防壁","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{particle_self:15,effects:[{target_type:2,effect_type:"modify_value",input:"fire_resistance",var:1},{target_type:2,effect_type:"modify_value",input:"shield_next",var:5},{target_type:2,effect_type:"draw",var:1},{target_type:2,effect_type:"modify_value",input:"soul_break",var:2}], cost: 4}, type: 1}}
give @p magma_block{HideFlags:1,display:{Lore:['[{"text":"待機の火炎爆弾を全て起爆する","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+1","color":"gray","italic":false}]','[{"text":"待機 ","color":"yellow","italic":false},{"text":"ランダムな敵に2ダメージ与え、","color":"gray","italic":false}]','[{"text":"さらに【攻撃力】-2、【燃焼】+2","color":"gray","italic":false}]'], Name:'[{"text":"5:火炎爆弾","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[     {target_type:2,effect_type:"after_effect",cg:{cost:0,delay:0,delay_base:0,repeat:-1,id:"magic_sword_fire_fire1",effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"magic_sword_fire_taiki1"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_after_effect",effect_mode:"activate",mute:1,var:1,merge_checker:{id:"magic_sword_fire_taiki1"}},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",effect_mode:"delete",merge_checker:{id:"magic_sword_fire_fire1"}}]}},{target_type:2,effect_type:"after_effect",cg:{delay:2,cost:{amount:0,bypass:1},effects:[{target_type:5,effect_type:"after_effect",cg:{delay:32767,delay_type:1,repeat:0,particle_laser:1,particle_self:8,particle_target:2,id:"magic_sword_fire_taiki1",effects:[{target_type:7,effect_type:"damage",var:2},{target_type:7,effect_type:"modify_value",input:"strength",var:-2},{target_type:7,effect_type:"modify_value",input:"burn",var:2}]}}]}}     ], cost: 5}, type: 1}}
give @p orange_banner{HideFlags:1,display:{Lore:['[{"text":"三幕後-閉幕 ","color":"green","italic":false},{"text":"標敵に4ダメージ、【燃焼】+3","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+2","color":"gray","italic":false}]'], Name:'[{"text":"6:火炎円環","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[{target_type:1,effect_type:"after_effect",cg:{delay_type:2,delay:2,repeat:3,name:'[{"text":"火炎円環","italic":false,"color":"white"}]',lore:['[{"text":"三幕後-閉幕 ","color":"green","italic":false},{"text":"標敵に4ダメージ、【燃焼】+3","color":"gray","italic":false}]'],cost:0,particle_laser:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"modify_value",type:"particle",input:"target",var:8},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"damage",var:4},{condition:{id:1,max:1},target_type:7,effect_type:"modify_value",input:"burn",var:3}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:2}], cost: 6}, type: 1}}
give @p red_banner{HideFlags:1,display:{Lore:['[{"text":"二幕後-閉幕 ","color":"green","italic":false},{"text":"ランダムな敵5体に4ダメージ、【燃焼】+3","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+5","color":"gray","italic":false}]'], Name:'[{"text":"10:業火円環","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[{target_type:5,target_count:5,effect_type:"after_effect",cg:{delay_type:2,delay:2,repeat:3,name:'[{"text":"業火円環","italic":false,"color":"white"}]',lore:['[{"text":"二幕後-閉幕 ","color":"green","italic":false},{"text":"ランダムな敵5体に4ダメージ、【燃焼】+3","color":"gray","italic":false}]'],cost:0,particle_laser:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"modify_value",type:"particle",input:"target",var:8},{condition:{id:1,max:1,continue:1},target_type:7,effect_type:"damage",var:4},{condition:{id:1,max:1},target_type:7,effect_type:"modify_value",input:"burn",var:3}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:5}], cost: 10}, type: 1}}
give @p minecraft:wooden_sword{tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:9,particle_laser:1,particle_other:5,particle_look:5,effects:[{target_type:3,effect_type:"modify_value",effect_mode:"set",input:"fire_resistance",var:0},{target_type:2,effect_type:"draw",var:1},{target_type:3,effect_type:"damage",var:1},{target_type:3,effect_type:"modify_value",input:"burn",var:3}]}},HideFlags:255,display:{Name:'[{"text":"9:試作魔剣三号[炎]","italic":false,"color":"red"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"全ての敵の【火炎耐性】を0にする","color":"gray","italic":false}]','[{"text":"ドロー1、全ての敵に1ダメージと【燃焼】+3","color":"gray","italic":false}]']}}

## {id:"minecraft:purpur_pillar",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,effects:[{target_type:2,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"時空移動","italic":false,"color":"white"}]',lore:['[{"text":"開幕 攻撃力+1、透明化+1","color":"gray","italic":false}]'],particle_self:45,effects:[{target_type:2,effect_type:"modify_value",input:"strength",var:1},{target_type:2,effect_type:"modify_value",input:"invisible",var:1}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:6}]}},HideFlags:255,display:{Name:'[{"text":"4:時空移動","italic":false,"color":"white"}]',Lore:['[{"text":"魂壊+6、開幕 攻撃力+1、透明化+1","color":"gray","italic":false}]']}}}

## {id:"minecraft:chorus_flower",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:8,particle_laser:1,particle_look:11,effects:[{target_type:2,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"時空切断","italic":false,"color":"white"}]',lore:['[{"text":"開幕 敵に魂壊+10、10ダメージ","color":"gray","italic":false}]'],particle_self:45,effects:[{target_type:7,effect_type:"modify_value",input:"soul_break",var:10},{target_type:7,effect_type:"damage",var:10}]}},{target_type:2,effect_type:"modify_value",input:"soul_break",var:12}]}},HideFlags:255,display:{Name:'[{"text":"8:時空切断","italic":false,"color":"white"}]',Lore:['[{"text":"魂壊+12、開幕 標敵に魂壊+10、10ダメージ","color":"gray","italic":false}]']}}}

give @p minecraft:dark_prismarine{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,cost_type:2,cost_mods:[{name:"soul_break",min:10}],particle_laser:0,particle_target:4,effects:[{target_type:1,effect_type:"damage",var_input:{name:"soul_break",mult:0.1,mute:1}},{target_type:2,effect_type:"draw",var_input:{name:"soul_break",mult:0.1,mute:1}}]}},HideFlags:255,display:{Name:'[{"text":"6:壊土転衝","italic":false,"color":"white"}]',Lore:['[{"text":"【魂壊】10につき標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【魂壊】10につきドロー1","color":"gray","italic":false}]']}}
give @p minecraft:beacon{tmw:{id:272,type:1,enableQ:1,cg:{cost:13,particle_laser:0,particle_target:4,effects:[{target_type:2,effect_type:"modify_value",input:"health",effect_mode:"set",var:20},{target_type:2,effect_type:"modify_value",input:"health_max",effect_mode:"set",var:20},{target_type:2,effect_type:"modify_after_effect",merge_checker:{id:"soul_break_max"},effect_mode:"delete"},{target_type:2,effect_type:"after_effect",cg:{id:"soul_break_max",cost:{bypass:1,amount:0},delay:0,delay_base:0,repeat:-1,effects:[{target_type:2,effect_type:"condition_input",mute:1,input:"health_max"},{target_type:2,effect_type:"condition_input",effect_mode:"add",invert:1,mute:1,input:"health"},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"health",effect_mode:"set",var_input:{name:"health_max",mute:1}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"soul_break",var_input:{name:"condition",mute:1}},{target_type:2,effect_type:"condition_input",input:"soul_break",mute:1},{condition:{id:1,min:100},target_type:2,effect_type:"modify_after_effect",merge_checker:{id:"soul_break_max"},effect_mode:"delete"}]}}]}},HideFlags:255,display:{Name:'[{"text":"13:破魂極大点","italic":false,"color":"white"}]',Lore:['[{"text":"体力、最大体力が20になる","color":"gray","italic":false}]','[{"text":"常時 ","color":"yellow","italic":false},{"text":"ダメージをすべて【魂壊】に変換する","color":"gray","italic":false}]','[{"text":"【魂壊】が100になるとこの効果は破棄される","color":"gray","italic":false}]']}}
give @p minecraft:dark_prismarine_stairs{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_target:4,effects:[{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"invulnerable",var:2},{target_type:2,effect_type:"modify_value",input:"soul_break",var:25},{target_type:2,effect_type:"discard",var:2}]}},HideFlags:255,display:{Name:'[{"text":"3:絶対魂壁","italic":false,"color":"white"}]',Lore:['[{"text":"【無敵】= 2","color":"gray","italic":false}]','[{"text":"自身の【魂壊】+25","color":"gray","italic":false}]','[{"text":"カードを2枚捨てる","color":"gray","italic":false}]']}}
