give @p minecraft:yellow_candle{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:幸せの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"1回復","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}
give @p minecraft:black_candle{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"damage",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:憎しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"自分と標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}
give @p minecraft:cyan_candle{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:1,effect_type:"mana_max",var:-1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"7:哀しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"標敵にマナ最大値-1","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}
give @p minecraft:white_candle{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"create",var:2,list:[     {id:"yellow_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:幸せの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"1回復","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}},{id:"yellow_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:幸せの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"1回復","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}},{id:"black_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"damage",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:憎しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"自分と標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}},{id:"black_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"damage",var:1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:憎しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"自分と標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}},{id:"cyan_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:1,effect_type:"mana_max",var:-1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"7:哀しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"標敵にマナ最大値-1","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}},{id:"cyan_candle",Count:1b,tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:1,effect_type:"mana_max",var:-1},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"7:哀しみの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"標敵にマナ最大値-1","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}}     ]},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"3:情動の蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"幸せ、憎しみ、哀しみから2枚を手札に創造する","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}
give @p minecraft:red_candle{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:1,effect_type:"damage",var_input:{name:"candle",mult:0.5}},{target_type:2,effect_type:"modify_value",input:"candle",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:怒りの蠟燭","italic":false,"color":"white"}]',Lore:['[{"text":"蠟燭の半分のダメージを与える","color":"gray","italic":false}]','[{"text":"【蠟燭】+1","color":"gray","italic":false}]']}}
give @p minecraft:lectern{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"heal",var_input:{name:"candle",mult:0.5}},{target_type:2,effect_type:"condition_input",input:"candle"},{condition:{id:1,min:5,continue:1},target_type:2,effect_type:"draw",var:1},{condition:{id:1,min:10,continue:1},target_type:2,effect_type:"mana",var:2},{condition:{id:1,min:20},target_type:3,effect_type:"discard",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:灯火の経典","italic":false,"color":"white"}]',Lore:['[{"text":"蠟燭の半分だけ回復する","color":"gray","italic":false}]','[{"text":"【蠟燭:5】","color":"gray","italic":false},{"text":" ドロー1","color":"gray","italic":false}]','[{"text":"【蠟燭:10】","color":"gray","italic":false},{"text":" マナ回復2","color":"gray","italic":false}]','[{"text":"【蠟燭:20】","color":"gray","italic":false},{"text":" 全ての敵はカードを1枚捨てる","color":"gray","italic":false}]']}}
give @p minecraft:fire_coral{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_self:1,effects:[{target_type:2,effect_type:"mana",var:1},{target_type:2,effect_type:"damage",var:4}]}},HideFlags:1,display:{Name:'[{"text":"0:もうﾏｼﾞ無理。ﾘｽｶしょ…","italic":false,"color":"white"}]',Lore:['[{"text":"マナ+1 自分に4ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:tuff{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:一石二鳥","italic":false,"color":"white"}]',Lore:['[{"text":"1回復 ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:redstone{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:1,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:アタックチャンス！","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:azalea_leaves{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:魔戒之蕾","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ 自分を1回復","color":"gray","italic":false}]']}}
give @p minecraft:flowering_azalea_leaves{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:2,effect_type:"heal",var:2}]}},HideFlags:1,display:{Name:'[{"text":"4:魔戒之花束","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージ 自分を2回復","color":"gray","italic":false}]']}}
give @p minecraft:brain_coral{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,effects:[{target_type:2,effect_type:"heal",var:5},{target_type:2,effect_type:"condition_input",input:"health"},{condition:{id:1,min:100},target_type:4,effect_type:"damage",var:99}]}},HideFlags:1,display:{Name:'[{"text":"10:その身穿つはこの充溢","italic":false,"color":"white"}]',Lore:['[{"text":"5回復","color":"gray","italic":false}]','[{"text":"HPが100以上なら全員に99ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:bell{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,effects:[{target_type:1,effect_type:"after_effect",cg:{delay:20,delay_base:10,repeat:5,cost:0,effects:[{target_type:2,effect_type:"condition_input",input:"rand",mute:1,rand:{min:0,max:3}},{condition:{id:1,min:0,max:0,continue:1},target_type:2,effect_type:"damage",var:1},{condition:{id:1,min:1,max:1,continue:1},target_type:6,effect_type:"damage",var:1},{condition:{id:1,min:2,max:2,continue:1},target_type:7,effect_type:"damage",var:1},{condition:{id:1,min:3,max:3},target_type:6,effect_type:"damage",var:5}]}}]}},HideFlags:1,display:{Name:'[{"text":"6:鏖の賽","italic":false,"color":"white"}]',Lore:['[{"text":"以下からランダムに一つを発動","color":"gray","italic":false}]','[{"text":"・自身に1ダメージ","color":"gray","italic":false}]','[{"text":"・ランダムなプレイヤーに1ダメージ","color":"gray","italic":false}]','[{"text":"・標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"・ランダムなプレイヤーに5ダメージ","color":"gray","italic":false}]','[{"text":"これを五回繰り返す","color":"gray","italic":false}]']}}
give @p minecraft:carved_pumpkin{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:1,effect_type:"damage",var_input:{name:"self_hurt",mult:1}}]}},HideFlags:1,display:{Name:'[{"text":"7:犇めく痛み","italic":false,"color":"white"}]',Lore:['[{"text":"カードの効果で自身にダメージを与えた回数だけ","color":"gray","italic":false}]','[{"text":"標敵にダメージを与える","color":"gray","italic":false}]']}}
give @p minecraft:brown_shulker_box{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"draw",var:3}]}},HideFlags:1,display:{Name:'[{"text":"3:持ち込み可","italic":false,"color":"white"}]',Lore:['[{"text":"ドロー3","color":"gray","italic":false}]']}}
give @p minecraft:wither_skeleton_skull{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"modify_value",input:"more_attack_more",var:1},{target_type:1,effect_type:"damage",var_input:{name:"more_attack_more",mult:1}}]}},HideFlags:1,display:{Name:'[{"text":"4:モア・アタック・モア","italic":false,"color":"white"}]',Lore:['[{"text":"【連撃】+1","color":"gray","italic":false}]','[{"text":"標敵に【連撃】ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:yellow_bed{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"heal",var:3}]}},HideFlags:1,display:{Name:'[{"text":"3:いい夢見てね","italic":false,"color":"white"}]',Lore:['[{"text":"3回復","color":"gray","italic":false}]']}}
give @p minecraft:warped_wart_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:1,effect_type:"modify_value",input:"curse",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:矮小さな呪い","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に【呪い】+1","color":"gray","italic":false}]']}}
give @p minecraft:large_amethyst_bud{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"modify_value",input:"blessing",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:矮小さな祝福","italic":false,"color":"white"}]',Lore:['[{"text":"【祝福】+1","color":"gray","italic":false}]']}}
give @p minecraft:emerald_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:2,effect_type:"condition_input",input:"curse"},{condition:{id:1,min:1},target_type:2,effect_type:"modify_value",input:"curse",var:-1},{target_type:1,effect_type:"damage",var:3}]}},HideFlags:1,display:{Name:'[{"text":"5:詭辯の祝い","italic":false,"color":"white"}]',Lore:['[{"text":"呪いを1解除し、標敵に3ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:blue_ice{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,effects:[{target_type:4,effect_type:"discard",var:40},{target_type:2,effect_type:"modify_value",input:"stun",var:2}]}},HideFlags:1,display:{Name:'[{"text":"6:大魔法 ラグナロク","italic":false,"color":"white"}]',Lore:['[{"text":"全てのプレイヤーはカードを４０枚捨てる","color":"gray","italic":false}]','[{"text":"自身に【行動不能】+2","color":"gray","italic":false}]']}}
give @p minecraft:campfire{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{case:[{target_type:1,effect_type:"damage",var:5},{target_type:1,effect_type:"heal",var:3}]}]}},HideFlags:1,display:{Name:'[{"text":"2:盟神探湯","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に以下の効果のどちらかを与える","color":"gray","italic":false}]','[{"text":"・5ダメージ","color":"gray","italic":false}]','[{"text":"・3回復","color":"gray","italic":false}]']}}
give @p minecraft:soul_torch{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:4},{target_type:2,effect_type:"condition_input",input:"self_hurt"},{condition:{id:1,min:6,continue:1},target_type:8,effect_type:"damage",var:1},{condition:{id:1,min:14,continue:1},target_type:8,effect_type:"damage",var:1},{target_type:1,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"逃避した現実","italic":false,"color":"white"}]',lore:['[{"text":"自身に3ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1,effects:[{target_type:2,effect_type:"damage",var:3}]}}]}},HideFlags:1,display:{Name:'[{"text":"3:現実逃避","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に4ダメージ","color":"gray","italic":false}]','[{"text":"【自傷:6】","color":"gray","italic":false},{"text":" 自身と標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【自傷:14】","color":"gray","italic":false},{"text":" 自身と標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"開幕 ","color":"green","italic":false},{"text":"自身と標敵に3ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:red_stained_glass{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:2,effect_type:"damage",var:2},{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"create",var:1,list:[                           {id:"minecraft:blue_stained_glass",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"heal",var:1},{target_type:1,effect_type:"damage",var:3},{target_type:2,effect_type:"create",var:1,list:[                           {id:"minecraft:green_stained_glass",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:2,effect_type:"heal",var:4},{target_type:1,effect_type:"damage",var:8}]}},HideFlags:1,display:{Name:'[{"text":"7:第三黒葬・終曲・諧謔曲-ﾗｽﾄｼﾝﾌｫﾆｰ･ｴﾋﾟﾛｰｸﾞ-","italic":false,"color":"white"}]',Lore:['[{"text":"自身を4回復 標敵に8ダメージ","color":"gray","italic":false}]']}}}                 ]}]}},HideFlags:1,display:{Name:'[{"text":"3:第二黒葬・諧謔曲-ｾｶﾝﾄﾞｼﾝﾌｫﾆｰ･ｽｹﾙﾂｫ-","italic":false,"color":"white"}]',Lore:['[{"text":"自身を1回復 標敵に3ダメージ","color":"gray","italic":false}]','[{"text":"カードを手札に創造する","color":"gray","italic":false}]','[{"text":"1 x 7:第三黒葬・終曲-ﾗｽﾄｼﾝﾌｫﾆｰ･ｴﾋﾟﾛｰｸﾞ-（4回復8ダメージ）","color":"gray","italic":false}]']}}}                 ]}]}},HideFlags:1,display:{Name:'[{"text":"1:第一黒葬・序曲-ﾌｧｰｽﾄｼﾝﾌｫﾆｰ･ﾌﾟﾛﾛｰｸﾞ-","italic":false,"color":"white"}]',Lore:['[{"text":"自身に2ダメージ 標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"カードを手札に創造する","color":"gray","italic":false}]','[{"text":"1 x 3:第二黒葬・諧謔曲-ｾｶﾝﾄﾞｼﾝﾌｫﾆｰ･ｽｹﾙﾂｫ-（1回復3ダメージ）","color":"gray","italic":false}]','[{"text":"       ↓","color":"gray","italic":false}]','[{"text":"1 x 7:第三黒葬・終曲-ﾗｽﾄｼﾝﾌｫﾆｰ･ｴﾋﾟﾛｰｸﾞ-（4回復8ダメージ）","color":"gray","italic":false}]']}}
give @p minecraft:chest{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:1,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:プレゼントボックス","italic":false,"color":"white"}]',Lore:['[{"text":"標敵は1回復 ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:stonecutter{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:1,effect_type:"damage",var:3}]}},HideFlags:1,display:{Name:'[{"text":"3:スペクタル・チェーンソー","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に3ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:sculk{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"discard",var:40},{target_type:2,effect_type:"draw",var:6}]}},HideFlags:1,display:{Name:'[{"text":"4:Gott ist tot","italic":false,"color":"white"}]',Lore:['[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"ドロー6","color":"gray","italic":false}]']}}
give @p minecraft:enchanting_table{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{case:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]},{case:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]},{case:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]}]}},HideFlags:1,display:{Name:'[{"text":"3:Eeny Meeny Miny Moe","italic":false,"color":"white"}]',Lore:['[{"text":"以下からランダムに一つが発動する","color":"gray","italic":false}]','[{"text":"・1ダメージ与える","color":"gray","italic":false}]','[{"text":"・1回復する","color":"gray","italic":false}]','[{"text":"・カードを1枚引く","color":"gray","italic":false}]','[{"text":"これを三回行う","color":"gray","italic":false}]']}}
