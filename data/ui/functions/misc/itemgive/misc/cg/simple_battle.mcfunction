## 発動タイミングとキーワード案

## 0     20     40     60    80    100
## 開幕 → 始刻 →      → 終刻 → 閉幕 →    
##   即時 一刻 →  二刻 → 三刻 → 四刻 → 一幕

give @p minecraft:red_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:軽い攻撃","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:orange_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,particle_laser:1,effects:[{target_type:1,effect_type:"damage",var:3},{target_type:2,effect_type:"heal",var:1},{target_type:4,effect_type:"damage",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"10:テストデバッグ1","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に3ダメージ、自身を1回復","color":"gray","italic":false}]','[{"text":"全員に2ダメージ、ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:yellow_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_self:1002,effects:[{target_type:2,effect_type:"heal",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:軽い回復","italic":false,"color":"white"}]',Lore:['[{"text":"自分を１回復する","color":"gray","italic":false}]']}}
give @p minecraft:lime_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"damage",var:4},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:1,display:{Name:'[{"text":"2:加速","italic":false,"color":"white"}]',Lore:['[{"text":"自分に４ダメージ与え、２ドロー","color":"gray","italic":false}]']}}
give @p minecraft:green_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:2,effect_type:"heal",var:2}]}},HideFlags:1,display:{Name:'[{"text":"3:吸収","italic":false,"color":"white"}]',Lore:['[{"text":"体力を2吸収する","color":"gray","italic":false}]']}}
give @p minecraft:blue_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,effects:[{target_type:1,effect_type:"damage",var:4},{target_type:2,effect_type:"heal",var:4}]}},HideFlags:1,display:{Name:'[{"text":"6:吸収II","italic":false,"color":"white"}]',Lore:['[{"text":"体力を4吸収する","color":"gray","italic":false}]']}}
give @p minecraft:purple_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:2,effect_type:"damage",var:1},{target_type:2,effect_type:"mana",var:1}]}},HideFlags:1,display:{Name:'[{"text":"0:テストデバッグ2","italic":false,"color":"white"}]',Lore:['[{"text":"自分に１ダメージ与える","color":"gray","italic":false}]','[{"text":"マナ+1","color":"gray","italic":false}]']}}
give @p minecraft:black_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:2,effect_type:"discard",var:1},{condition:{id:1,min:1},target_type:1,effect_type:"damage",var:3}]}},HideFlags:1,display:{Name:'[{"text":"4:ディスカードショット","italic":false,"color":"white"}]',Lore:['[{"text":"一番左のカードを１枚捨てる","color":"gray","italic":false}]','[{"text":"相手に２ダメージ与える","color":"gray","italic":false}]','[{"text":"捨てた場合さらにダメージ３与える","color":"gray","italic":false}]']}}
give @p minecraft:gray_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:1,effect_type:"damage",rand:{min:2,max:6}},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"5:ランダムディーラー","italic":false,"color":"white"}]',Lore:['[{"text":"相手に２-６ダメージ与える","color":"gray","italic":false}]','[{"text":"カードを1枚引く","color":"gray","italic":false}]']}}
give @p minecraft:light_gray_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{case:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]}]}},HideFlags:1,display:{Name:'[{"text":"1:ケースリザルト","italic":false,"color":"white"}]',Lore:['[{"text":"以下からランダムに一つが発動する","color":"gray","italic":false}]','[{"text":"・１ダメージ与える","color":"gray","italic":false}]','[{"text":"・１回復する","color":"gray","italic":false}]','[{"text":"・カードを1枚引く","color":"gray","italic":false}]']}}
give @p minecraft:melon{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:2,effect_type:"discard",var:40},{target_type:2,effect_type:"create",var:3,list:[{id:"minecraft:melon_slice",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:2}]}},HideFlags:1,display:{Name:'[{"text":"2:めろん","italic":false,"color":"white"}]',Lore:['[{"text":"２回復","color":"gray","italic":false}]']}}},{id:"minecraft:melon_slice",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:2}]}},HideFlags:1,display:{Name:'[{"text":"2:めろん","italic":false,"color":"white"}]',Lore:['[{"text":"２回復","color":"gray","italic":false}]']}}},{id:"minecraft:melon_seeds",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:3}]}},HideFlags:1,display:{Name:'[{"text":"2:種マシンガン","italic":false,"color":"white"}]',Lore:['[{"text":"３ダメージ","color":"gray","italic":false}]']}}},{id:"minecraft:melon_seeds",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:3}]}},HideFlags:1,display:{Name:'[{"text":"2:種マシンガン","italic":false,"color":"white"}]',Lore:['[{"text":"３ダメージ","color":"gray","italic":false}]']}}},{id:"minecraft:glistering_melon_slice",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"heal",var:3},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"2:輝くめろん","italic":false,"color":"white"}]',Lore:['[{"text":"３回復して１ドロー","color":"gray","italic":false}]']}}}]}]}},HideFlags:1,display:{Name:'[{"text":"1:カード創造テスト","italic":false,"color":"white"}]',Lore:['[{"text":"手札をすべて捨てる","color":"gray","italic":false}]','[{"text":"特殊デッキからドロー３する","color":"gray","italic":false}]','[{"text":"2 x 2:めろん（２回復）","color":"gray","italic":false}]','[{"text":"2 x 2:種マシンガン（３ダメージ）","color":"gray","italic":false}]','[{"text":"1 x 2:輝くめろん（３回復、１ドロー）","color":"gray","italic":false}]']}}
give @p minecraft:nether_brick{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,effects:[{case:[{target_type:2,effect_type:"duplication",var:1}]}]}},HideFlags:1,display:{Name:'[{"text":"6:コピー機","italic":false,"color":"white"}]',Lore:['[{"text":"次に使うカードの効果を複製する","color":"gray","italic":false}]']}}
give @p minecraft:pink_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"after_effect",cg:{delay:20,name:'[{"text":"追撃","italic":false,"color":"white"}]',lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1001,particle_target:1,effects:[{target_type:7,effect_type:"damage",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"2:追撃","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:magenta_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:20,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"after_effect",cg:{delay:20,delay_base:20,repeat:-1,name:'[{"text":"追撃","italic":false,"color":"white"}]',lore:['[{"text":"⌚1 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"20:永遠の追撃","italic":false,"color":"white"}]',Lore:['[{"text":"永続 ","color":"yellow","italic":false},{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:cyan_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:0,particle_self:1002,particle_look:1,effects:[{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:3,name:'[{"text":"テストデバッグ3","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"ドロー1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:2,effect_type:"draw",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"3:テストデバッグ3","italic":false,"color":"white"}]',Lore:['[{"text":"三度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"ドロー1","color":"gray","italic":false}]']}}
give @p minecraft:brown_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_self:1002,particle_look:1002,particle_other:1002,effects:[{target_type:4,effect_type:"health_averaging"}]}},HideFlags:1,display:{Name:'[{"text":"9:テストデバッグ4","italic":false,"color":"white"}]',Lore:['[{"text":"全員の体力を平均化する","color":"gray","italic":false}]']}}
give @p minecraft:white_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,particle_laser:1,particle_self:1002,particle_look:1002,particle_other:1002,effects:[{target_type:4,effect_type:"health_swap"}]}},HideFlags:1,display:{Name:'[{"text":"10:テストデバッグ5","italic":false,"color":"white"}]',Lore:['[{"text":"全員の体力をランダムに入れ替える","color":"gray","italic":false}]']}}
give @p minecraft:dirt{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_laser:0,particle_self:1002,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:テストデバッグ6","italic":false,"color":"white"}]',Lore:['[{"text":"自分の体力を1加算する","color":"gray","italic":false}]']}}
give @p minecraft:cobblestone{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:1,particle_target:1002,effects:[{target_type:1,effect_type:"damage",var_input:{name:"health"}}]}},HideFlags:1,display:{Name:'[{"text":"0:テストデバッグ7","italic":false,"color":"white"}]',Lore:['[{"text":"自分の体力に等しいダメージ","color":"gray","italic":false}]']}}
give @p minecraft:iron_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:1,particle_target:1002,effects:[{target_type:2,effect_type:"heal",var_input:{name:"health",pow:2,mult:2,add:2}}]}},HideFlags:1,display:{Name:'[{"text":"0:テストデバッグ8","italic":false,"color":"white"}]',Lore:['[{"text":"自分の体力の2乗の2倍+2回復","color":"gray","italic":false}]']}}

#give @p minecraft:magenta_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"after_effect",cg:{delay:20,delay_base:20,repeat:999,name:'[{"text":"追撃","italic":false,"color":"white"}]',lore:['[{"text":"⌚1 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_look:1,effects:[{target_type:2,effect_type:"condition_input",input:"repeat"},{condition:{id:1,min:1},target_type:2,effect_type:"mana",var:10}]}}]}},HideFlags:1,display:{Name:'[{"text":"20:永遠の追撃","italic":false,"color":"white"}]',Lore:['[{"text":"永続 ","color":"yellow","italic":false},{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}