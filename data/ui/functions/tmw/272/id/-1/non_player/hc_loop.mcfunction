scoreboard players set $mod ui_calc1 110
execute if score $list_card_count ui_temp matches 0 run scoreboard players set $mod ui_calc1 120
function ui:common/rand
execute if score $list_card_count ui_temp matches 0 run scoreboard players remove $rand ui_calc1 10

execute if score $rand ui_calc1 matches -10..-1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:command_block",tag:{CustomModelData:191001,tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:10,particle_laser:0,particle_self:15,particle_look:0,oo_draw_effect:     {delay_type:0,delay:1,repeat:0,name:'["",{"text":"【唯一】","bold":true,"italic":false,"color":"gold"},{"text":"黒穹にその身を","italic":false,"color":"white"}]',lore:['[{"text":"HP-10 再生+3 耐性+3","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:15,effects:[{target_type:2,effect_type:"modify_value",input:"health",var:-10},{target_type:2,effect_type:"modify_value",input:"regeneration",var:3},{target_type:2,effect_type:"modify_value",input:"resistance",var:3}]}      ,draw_effect:     {delay_type:0,delay:1,repeat:0,name:'[{"text":"黒穹にその身を","italic":false,"color":"white"}]',lore:['[{"text":"耐性+1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:15,effects:[{target_type:2,effect_type:"modify_value",input:"resistance",var:1}]}      ,effects:[{target_type:2,effect_type:"draw",var:5},{target_type:2,effect_type:"modify_value",input:"regeneration",var:3},{target_type:2,effect_type:"modify_value",input:"resistance",var:3}]}},HideFlags:1,display:{Name:'[{"text":"10:黒穹にその身を","italic":false,"color":"aqua"}]',Lore:['[{"text":"唯一 ","color":"gold","italic":false},{"text":"開戦 ","color":"green","italic":false},{"text":"HP-10 再生+3 耐性+3","color":"gray","italic":false}]','[{"text":"ドロー ","color":"green","italic":false},{"text":"耐性+1","color":"gray","italic":false}]','[{"text":"5ドロー 再生+3 耐性+3","color":"gray","italic":false}]']}}}

execute if score $rand ui_calc1 matches 0..9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:pink_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:1001,particle_look:1,effects:[{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"after_effect",cg:{delay:20,name:'[{"text":"追撃","italic":false,"color":"white"}]',lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1001,particle_target:1,effects:[{target_type:7,effect_type:"damage",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"2:追撃","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"一刻 ","color":"green","italic":false},{"text":"標敵に1ダメージ","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 10..19 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:red_mushroom",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"heal",var:5},{target_type:1,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"3:涅槃寂静","italic":false,"color":"white"}]',Lore:['[{"text":"自分を5回復","color":"gray","italic":false}]','[{"text":"相手は1ドロー","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 20..29 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"3:快刀乱麻","italic":false,"color":"white"}]',Lore:['[{"text":"相手に２ダメージ与え、カードを１枚引く","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 30..39 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:iron_bars",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:2,effect_type:"draw",rand:{min:0,max:5,to_var:1}}]}},HideFlags:1,display:{Name:'[{"text":"2:ラッキーケージ","italic":false,"color":"white"}]',Lore:['[{"text":"カードを０～５枚引く","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 40..49 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dragon_head",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,effects:[{target_type:1,effect_type:"damage",var:8}]}},HideFlags:1,display:{Name:'[{"text":"7:竜の咢","italic":false,"color":"white"}]',Lore:['[{"text":"８ダメージ与える","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 50..59 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:yellow_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,particle_self:1002,effects:[{target_type:2,effect_type:"heal",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:軽い回復","italic":false,"color":"white"}]',Lore:['[{"text":"自分を１回復する","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 60..69 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:gold_nugget",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:1,effect_type:"draw",effect_mode:"steal",var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:掠め取り","italic":false,"color":"white"}]',Lore:['[{"text":"相手のデッキからドロー1","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 70..79 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:green_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:2,effect_type:"heal",var:2}]}},HideFlags:1,display:{Name:'[{"text":"3:吸収","italic":false,"color":"white"}]',Lore:['[{"text":"体力を2吸収する","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 80..89 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:diamond",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:2,effect_type:"condition_input",input:"mana_max"},{condition:{id:1,min:5},target_type:2,effect_type:"mana_max",var:1}]}},HideFlags:1,display:{Name:'[{"text":"5:ダイヤモンドをあなたに","italic":false,"color":"white"}]',Lore:['[{"text":"マナの最大値が5以上ならマナ最大値+1","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 90..99 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:light_gray_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{case:[{target_type:1,effect_type:"damage",var:1},{target_type:2,effect_type:"heal",var:1},{target_type:2,effect_type:"draw",var:1}]}]}},HideFlags:1,display:{Name:'[{"text":"1:ケースリザルト","italic":false,"color":"white"}]',Lore:['[{"text":"以下からランダムに一つが発動する","color":"gray","italic":false}]','[{"text":"・１ダメージ与える","color":"gray","italic":false}]','[{"text":"・１回復する","color":"gray","italic":false}]','[{"text":"・カードを1枚引く","color":"gray","italic":false}]']}}}

execute if score $rand ui_calc1 matches 100 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,effects:[{target_type:2,effect_type:"heal",var:3}]}},HideFlags:1,display:{Name:'[{"text":"1:極限の生命力","italic":false,"color":"aqua"}]',Lore:['[{"text":"3回復","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 101 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:5,effect_type:"damage",var:7},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:1,display:{Name:'[{"text":"5:強烈な一撃","italic":false,"color":"aqua"}]',Lore:['[{"text":"ランダムな敵に7ダメージ","color":"gray","italic":false}]','[{"text":"ドロー1","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 102 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,effects:[{target_type:2,effect_type:"heal",var:20},{target_type:3,effect_type:"damage",var:1}]}},HideFlags:1,display:{Name:'[{"text":"10:回帰","italic":false,"color":"aqua"}]',Lore:['[{"text":"20回復","color":"gray","italic":false}]','[{"text":"全ての敵に1ダメージ","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 103 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:5,effect_type:"damage",var:2}]}},HideFlags:1,display:{Name:'[{"text":"0:零撃","italic":false,"color":"aqua"}]',Lore:['[{"text":"ランダムな敵に2ダメージ","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 104 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"再生","italic":false,"color":"aqua"}]',lore:['[{"text":"6回復","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:7,effect_type:"heal",var:6}]}}]}},HideFlags:1,display:{Name:'[{"text":"3:再生","italic":false,"color":"aqua"}]',Lore:['[{"text":"次のターンの開始時に6回復","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 105 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,effects:[{target_type:3,effect_type:"discard",var:2}]}},HideFlags:1,display:{Name:'[{"text":"6:亡者の声","italic":false,"color":"aqua"}]',Lore:['[{"text":"全ての敵はカードを2枚捨てる","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 106 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,effects:[{target_type:1,effect_type:"damage",var:3},{target_type:1,effect_type:"draw",effect_mode:"steal",var:3}]}},HideFlags:1,display:{Name:'[{"text":"2:亡者の手","italic":false,"color":"aqua"}]',Lore:['[{"text":"標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"相手のデッキからドロー3","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 107 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:13,cost_type:1,cost_mods:[{name:"health",pow:0,mult:0.5,add:-10}],effects:[{target_type:5,target_count:2,effect_type:"damage",var:5}]}},HideFlags:1,display:{Name:'[{"text":"13:掌握","italic":false,"color":"aqua"}]',Lore:['[{"text":"軽減 10-体力の半分","color":"gray","italic":false}]','[{"text":"ランダムな敵2体に5ダメージ","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 108 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"mana_max",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:死のエネルギー","italic":false,"color":"aqua"}]',Lore:['[{"text":"マナ最大値+1","color":"gray","italic":false}]']}}}
execute if score $rand ui_calc1 matches 109 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:0,effects:[{target_type:2,effect_type:"mana",var:3},{target_type:2,effect_type:"after_effect",cg:{delay:0,delay_type:1,name:'[{"text":"不吉","italic":false,"color":"aqua"}]',cost:3,particle_laser:0,effects:[]}}]}},HideFlags:1,display:{Name:'[{"text":"0:不吉な力","italic":false,"color":"aqua"}]',Lore:['[{"text":"マナ+3","color":"gray","italic":false}]','[{"text":"次のターンの開始時に3コストの不吉を使用","color":"gray","italic":false}]']}}}


scoreboard players add $list_card_count ui_temp 1
execute if score $list_card_count ui_temp matches ..8 run function ui:tmw/272/id/-1/non_player/hc_loop