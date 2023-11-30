give @p minecraft:compass{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,effects:[{target_type:4,effect_type:"discard",var:40},{target_type:4,effect_type:"draw",var:3},{target_type:4,effect_type:"modify_value",effect_mode:"set",input:"health",var:20}]}},HideFlags:255,display:{Name:'[{"text":"10:TT2プロトコル","italic":false,"color":"white"}]',Lore:['[{"text":"全てのプレイヤーはカードをすべて捨てドロー3","color":"gray","italic":false}]','[{"text":"その後体力を20にする","color":"gray","italic":false}]']}}

give @p minecraft:diamond_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:12,particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:2,effect_type:"after_effect",cg:{delay_type:0,delay:5,delay_base:5,repeat:8,name:'[{"text":"灯龍祝舞夜行","italic":false,"color":"white"}]',lore:['[{"text":"四半刻 ","color": "green","italic": false},{"text":"ランダムな敵に3ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:1,particle_target:2,effects:[{target_type:5,effect_type:"damage",var:2}]}}]}},HideFlags:255,display:{Name:'[{"text":"12:灯龍祝舞夜行","italic":false,"color":"white"}]',Lore:['[{"text":"半刻 ","color": "green","italic": false},{"text":"ランダムな敵に2ダメージ","color":"gray","italic":false}]','[{"text":"この効果を8回繰り返す","color":"gray","italic":false}]']}}

give @p minecraft:potion{Potion:"minecraft:invisibility",tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-5},{target_type:2,effect_type:"modify_value",input:"mana_max",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:妖精の魂の飲み薬","italic":false,"color":"white"}]',Lore:['[{"text":"体力を5減らし最大マナ+1","color":"gray","italic":false}]','[{"text":"*人間には過ぎた力だ*","color":"dark_gray","italic":false}]']}}

give @p minecraft:diamond_hoe{tmw:{id:272,type:1,enableQ:1,cg:{cost:99,cost_min:9,cost_max:99,cost_type:1,cost_mods:[{name:"health",pow:0,mult:90,add:-360}],effects:[{target_type:2,effect_type:"condition_input",input:"mana_max"},{condition:{id:1,min:9},target_type:3,effect_type:"damage",var:30}]}},HideFlags:255,display:{Name:'[{"text":"99:furioso_risoluto","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(9) ","color":"blue","italic":false},{"text":"体力が3以下","color":"gray","italic":false}]','[{"text":"最大MPが9以上なら全ての敵に30ダメージ","color":"gray","italic":false}]']}}

give @p minecraft:netherite_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,only_one:1,effects:[{target_type:4,effect_type:"after_effect",effect_mode:"give",cg:{delay:1,name:'[{"text":"摩天光臨","italic":false,"color":"white"}]',lore:['[{"text":"全員に以下の効果を与える","color":"gray","italic":false}]','[{"text":" 自身の手札を全て捨て、最大mpを0にする。","color":"gray","italic":false}]','[{"text":" 捨てた手札の枚数だけ最大mpを増やし、","color":"gray","italic":false}]','[{"text":" 減少した最大mp分だけドローする。","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:0,particle_target:12,effects:[       {effect_type:"discard",target_type:2,var:40},{effect_type:"modify_value",target_type:2,input:"temp1",effect_mode:"set",mute:1,var_input:{name:"condition",mute:1}},      {effect_type:"condition_input",input:"mana_max",target_type:2},{effect_type:"modify_value",target_type:2,input:"temp2",effect_mode:"set",mute:1,var_input:{name:"condition",mute:1}}      ,{effect_type:"modify_value",target_type:2,input:"mana_max",effect_mode:"set",var_input:{name:"temp1",mute:1}}      ,{effect_type:"draw",target_type:2,var_input:{name:"temp2",mute:1}}      ]}}]}},HideFlags:255,display:{Name:'[{"text":"10:摩天光臨","italic":false,"color":"white"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"全員に以下の効果を与える","color":"gray","italic":false}]','[{"text":" 自身の手札を全て捨て、最大mpを0にする。","color":"gray","italic":false}]','[{"text":" 捨てた手札の枚数だけ最大mpを増やし、","color":"gray","italic":false}]','[{"text":" 減少した最大mp分だけドローする。","color":"gray","italic":false}]']}}

give @p minecraft:chain{tmw: {enableQ: 1,id: 272,cg: {particle_laser:1,particle_self:1001,particle_look:2,effects: [{target_type:2,effect_type:"modify_value",input:"accumulation",var:1},{target_type: 2, effect_type: "condition_input",mute:1,input:"accumulation", var: 8},{condition:{id:1,min:1,continue:1},target_type:1,effect_type:"damage",var:1},{condition:{id:1,min:2,continue:1},target_type:1,effect_type:"damage",var:1},{condition:{id:1,min:3,continue:1},target_type:2,effect_type:"draw",var:1},{condition:{id:1,min:4,continue:1},target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:5,continue:1},target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:6,continue:1},target_type:2,effect_type:"draw",var:2},{condition:{id:1,min:7,continue:1},target_type:5,effect_type:"modify_value",effect_mode:"set",input:"stun",var:1},{condition:{id:1,min:8,continue:1},target_type:5,effect_type:"modify_value",effect_mode:"set",input:"stun",var:1},{condition:{id:1,min:9,continue:1},target_type:5,effect_type:"modify_value",effect_mode:"set",input:"stun",var:1},{condition:{id:1,min:10,continue:1},target_type:5,effect_type:"modify_value",effect_mode:"set",input:"stun",var:1}],cost: 5},type: 1},HideFlags: 1, display: {Lore: ['[{"text":"使った回数が多いほど効果が上がる（仮）","color":"gray","italic":false}]'], Name: '[{"text":"5:禁断の魂","italic":false,"color":"white"}]'}}

give @p minecraft:nether_star{tmw:{id:272,type:1,enableQ:1,cg:{cost:15,only_one:1,particle_self:23,effects:[{target_type:2,input:health,effect_type:"modify_value",var:20},{target_type:2,effect_type:"mana_max",var:10},{target_type:2,effect_type:"discard",var:40},{target_type:2,input:accumulation,effect_mode:"set",effect_type:"modify_value",var:1},{mute:1,target_type:2,effect_type: "list_swap",list:[{id:"minecraft:emerald_block",tag:{HideFlags:255,display:{Name:'[{"text":"7:無比なる覇気","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に5ダメージ, 3枚ドロー","color":"gray","italic":false}]','[{"text":"[シールド:6]","color":"aqua","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:7,particle_self:8,particle_laser:8,effects:[{target_type:3,effect_type:damage,var:5},{target_type:2,input:shield,effect_type:"modify_value",var:6},{target_type:2,effect_type:draw,var:3}]}}}},{id:"minecraft:emerald_block",tag:{HideFlags:255,display:{Name:'[{"text":"7:無比なる覇気","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に5ダメージ, 3枚ドロー","color":"gray","italic":false}]','[{"text":"[シールド:6]","color":"aqua","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:7,particle_self:8,particle_laser:8,effects:[{target_type:3,effect_type:damage,var:5},{target_type:2,input:shield,effect_type:"modify_value",var:6},{target_type:2,effect_type:draw,var:3}]}}}},{id:"minecraft:emerald_block",tag:{HideFlags:255,display:{Name:'[{"text":"7:無比なる覇気","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に5ダメージ, 3枚ドロー","color":"gray","italic":false}]','[{"text":"[シールド:6]","color":"aqua","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:7,particle_self:8,particle_laser:8,effects:[{target_type:3,effect_type:damage,var:5},{target_type:2,input:shield,effect_type:"modify_value",var:6},{target_type:2,effect_type:draw,var:3}]}}}},{id:"minecraft:blaze_powder",tag:{HideFlags:255,display:{Name:'[{"text":"11:燃え盛るほむら","italic":false,"color":"white"}]',Lore:['[{"text":"[敵全体]10ダメージ,[燃焼:5]","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:11,particle_self:8,particle_laser:8,effects:[{target_type:3,effect_type:damage,var:10},{target_type:3,input:burn,effect_type:"modify_value",var:5}]}}}},{id:"minecraft:blaze_powder",tag:{HideFlags:255,display:{Name:'[{"text":"11:燃え盛るほむら","italic":false,"color":"white"}]',Lore:['[{"text":"[敵全体]10ダメージ,[燃焼:5]","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:11,particle_self:8,particle_laser:8,effects:[{target_type:3,effect_type:damage,var:10},{target_type:3,input:burn,effect_type:"modify_value",var:5}]}}}},{id:"minecraft:purple_glazed_terracotta",tag:{HideFlags:255,display:{Name:'[{"text":"5:秘めたる力","italic":false,"color":"white"}]',Lore:['[{"text":"[ドロー:2], [体力:+5], [回避:+5], 次のターン:与えるダメージ+3, 最大MP+1","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:5,particle_self:4,particle_laser:22,effects:[{target_type:2,effect_type:"draw",var:2},{target_type:2,input:health,effect_type:"modify_value",var:5},{target_type:2,input:dodge,effect_type:"modify_value",var:5},{target_type:2,input:mana_max,effect_type:"modify_value",var:1},{target_type:2,effect_type:after_effect,cg:{delay_type:1,delay:0,repeat:1,effects:[{input:strength,target_type:2,effect_type:"modify_value",var:3}]}},]}}}},{id:"minecraft:purple_glazed_terracotta",tag:{HideFlags:255,display:{Name:'[{"text":"5:秘めたる力","italic":false,"color":"white"}]',Lore:['[{"text":"[ドロー:2], [体力:+5], [回避+5], 次のターン:与えるダメージ+3, 最大MP+1","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:5,particle_self:4,particle_laser:22,effects:[{target_type:2,effect_type:"draw",var:2},{target_type:2,input:health,effect_type:"modify_value",var:5},{target_type:2,input:dodge,effect_type:"modify_value",var:5},{target_type:2,input:mana_max,effect_type:"modify_value",var:1},{target_type:2,effect_type:after_effect,cg:{delay_type:1,delay:0,repeat:1,effects:[{input:strength,target_type:2,effect_type:"modify_value",var:3}]}},]}}}},{id:"minecraft:diamond_sword",tag:{HideFlags:255,display:{Name:'[{"text":"15:リーサルエッジ","italic":false,"color":"white"}]',Lore:['[{"text":"[敵全体]:7-20ダメージ","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:15,particle_self:3,particle_laser:3,effects:[{target_type:3,effect_type:damage,rand:{min:7,max:20}},]}}}},{id:"minecraft:diamond_sword",tag:{HideFlags:255,display:{Name:'[{"text":"15:リーサルエッジ","italic":false,"color":"white"}]',Lore:['[{"text":"[敵全体]:7-20ダメージ","color":"gray","italic":false}]','[{"text":"","color":"gray","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:15,particle_self:3,particle_laser:3,effects:[{target_type:3,effect_type:damage,rand:{min:7,max:20}},]}}}}]},{target_type:2,effect_type:"after_effect",cg:{mute:1,delay:1,repeat:-1,effects:[{target_type:2,input:"shield",effect_mode:"set",effect_type:"modify_value",var:6,mute:1}]}},{target_type:2,effect_type:"death_effect",cg:{mute:1,effects:[{mute:1,target_type:2,effect_type: "list_swap",list:[{id:"minecraft:bone_meal",tag:{HideFlags:255,display:{Name:'[{"text":"0:怨嗟のうめき","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に10ダメージ","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:22,particle_laser:43,effects:[{target_type:3,effect_type:damage,var:10},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:bone_meal",tag:{HideFlags:255,display:{Name:'[{"text":"0:怨嗟のうめき","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に10ダメージ","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:22,particle_laser:43,effects:[{target_type:3,effect_type:damage,var:10},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:bone_meal",tag:{HideFlags:255,display:{Name:'[{"text":"0:怨嗟のうめき","italic":false,"color":"white"}]',Lore:['[{"text":"敵全体に10ダメージ","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:22,particle_laser:43,effects:[{target_type:3,effect_type:damage,var:10},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:lava_bucket",tag:{HideFlags:255,display:{Name:'[{"text":"0:溶熱の儀式","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに1ダメージ+[燃焼:1] これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:1},{target_type:5,input:burn,effect_type:"modify_value",var:1},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:lava_bucket",tag:{HideFlags:255,display:{Name:'[{"text":"0:溶熱の儀式","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに1ダメージ+[燃焼:1] これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:1},{target_type:5,input:burn,effect_type:"modify_value",var:1},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:lava_bucket",tag:{HideFlags:255,display:{Name:'[{"text":"0:溶熱の儀式","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに1ダメージ+[燃焼:1] これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:1},{target_type:5,input:burn,effect_type:"modify_value",var:1},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:rotten_flesh",tag:{HideFlags:255,display:{Name:'[{"text":"0:「うご...ご..ご..わが身が崩れ行く...許さぬ..許さぬぞ..」","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに2ダメージ これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:2},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:rotten_flesh",tag:{HideFlags:255,display:{Name:'[{"text":"0:「うご...ご..ご..わが身が崩れ行く...許さぬ..許さぬぞ..」","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに2ダメージ これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:2},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},{id:"minecraft:rotten_flesh",tag:{HideFlags:255,display:{Name:'[{"text":"0:「うご...ご..ご..わが身が崩れ行く...許さぬ..許さぬぞ..」","italic":false,"color":"white"}]',Lore:['[{"text":"敵のうちランダムに2ダメージ これを7回繰り返す","color":"gray","italic":false}]','[{"text":"[封印(自身):1]","color":"dark_red","italic":false}]']},tmw: {id:272,type:1,enableQ:1,cg:{cost:{amount:0,bypass:1},particle_self:8,particle_laser:8,effects:[{effect_type:"after_effect",target_type:2,cg:{cost:{amount:0,bypass:1},repeat:7,delay:1,effects:[{target_type:5,effect_type:damage,var:2},]}},{target_type:2,input:seal,effect_type:"modify_value",var:1}]}}}},]}]}},{effect_type:"death_effect",target_type:2,cg:{cost:{amount:0,bypass:1},mute:1,repeat:-1,effects:[{target_type:2,input:accumulation,effect_type:"modify_value",var:1},{target_type:2,input:mana_max,effect_type:"modify_value",var:-15},{target_type:2,input:health,effect_type:"modify_value",var:50},{mute:1,target_type:2,input:"accumulation",effect_type:"condition_input"},{condition:{id:1,min:5},target_type:2,input:health,effect_mode:"set",effect_type:"modify_value",var:-999},]}}]}},HideFlags:1,display:{Name:'[{"text":"15:不滅の美","italic":false,"color":"white"}]',Lore:['[{"text":"[唯一]HPを20回復し、最大MPを10増やし、専用デッキに切り替わる。","color":"aqua","italic":false}]','[{"text":"常にシールド6を付与","color":"aqua","italic":false}]','[{"text":"1度めに体力が0以下になった時体力を50回復し、最大MPを15へらし、専用デッキに切り替わる。","color":"dark_red","italic":false}]','[{"text":"以降、二回体力が0以下になる度に最大MPを15消費して体力を50回復する。","color":"dark_red","italic":false}]']}}
