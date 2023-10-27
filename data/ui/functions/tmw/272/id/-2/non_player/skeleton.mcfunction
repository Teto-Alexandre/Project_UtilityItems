scoreboard players set $mod ui_calc1 12
function ui:common/rand

execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:pink_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:0,particle_self:16,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"bullet",var:1},{target_type:2,effect_type:"modify_value",input:"speed",var:1},{target_type:2,effect_type:"modify_value",input:"shield",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:クイックステップ","italic":false,"color":"white"}]',Lore:['[{"text":"弾丸+1、加速+1、シールド+1","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,cost_type:2,cost_mods:[{name:"bullet",min:1}],particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:1,effect_type:"damage",rand:{min:3,max:5}},{target_type:2,effect_type:"modify_value",input:"bullet",var:-1},{target_type:1,effect_type:"damage",var:1},{target_type:1,effect_type:"damage",var:1}]}},HideFlags:255,display:{Name:'[{"text":"5:デュアルレンジ","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が1以上","color":"gray","italic":false}]','[{"text":"弾丸を1使用する","color":"gray","italic":false}]','[{"text":"標敵に3-5のダメージ","color":"gray","italic":false}]','[{"text":"さらに標敵に1のダメージを2回与える","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:1,cost_type:2,cost_mods:[{name:"bullet",min:0,max:0}],particle_laser:0,particle_self:16,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"bullet",var:1}]}},HideFlags:255,display:{Name:'[{"text":"1:補充","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が0","color":"gray","italic":false}]','[{"text":"【弾丸】+1","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,cost_type:2,cost_mods:[{name:"bullet",max:0}],particle_laser:0,particle_self:16,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"bullet",var:1},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,cost:0,particle_target:6,name:'[{"text":"4:攻撃準備","italic":false,"color":"white"}]',lore:['[{"text":"【攻撃力】を1にする","color":"gray","italic":false}]'],effects:[{target_type:7,effect_type:"modify_value",effect_mode:"set",input:"strength",var:1}]}}]}},HideFlags:255,display:{Name:'[{"text":"4:攻撃準備","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が0以下","color":"gray","italic":false}]','[{"text":"【弾丸】+1","color":"gray","italic":false}]','[{"text":"開幕 ","color":"green","italic":false},{"text":"【攻撃力】を1にする","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,cost_type:2,cost_mods:[{name:"bullet",min:1}],particle_laser:0,particle_self:0,particle_look:0,effects:[{target_type:1,effect_type:"damage",rand:{min:3,max:5}},{target_type:2,effect_type:"modify_value",input:"bullet",var:-1}]}},HideFlags:255,display:{Name:'[{"text":"3:狙いを定めて","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が1以上","color":"gray","italic":false}]','[{"text":"弾丸を1使用する","color":"gray","italic":false}]','[{"text":" 標敵に3-5のダメージ","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 5 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,cost_type:2,cost_mods:[{name:"bullet",min:1}],particle_laser:0,particle_self:15,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"bullet",var:-1},{target_type:1,effect_type:"after_effect",cg:{name:'[{"text":"おてんば","italic":false,"color":"white"}]',lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が1以上","color":"gray","italic":false}]','[{"text":"開幕 ","color":"green","italic":false},{"text":"弾丸を1使用する","color":"gray","italic":false}]','[{"text":" 標敵に4-7のダメージ","color":"gray","italic":false}]'],delay_type:1,delay:0,cost:0,particle_laser:1,particle_self:46,particle_look:2,effects:[{target_type:7,effect_type:"damage",rand:{min:4,max:7}}]}}]}},HideFlags:255,display:{Name:'[{"text":"4:おてんば","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が1以上","color":"gray","italic":false}]','[{"text":"弾丸を1使用する","color":"gray","italic":false}]','[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に4-7のダメージ","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 6 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:wheat",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,cost_type:2,cost_mods:[{name:"bullet",min:1}],particle_laser:0,particle_self:15,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"bullet",var:-1},{target_type:1,effect_type:"after_effect",cg:{name:'[{"text":"スナイパー対決","italic":false,"color":"white"}]',lore:['[{"text":"標敵に5-9のダメージ、ドロー1","color":"gray","italic":false}]'],delay_type:1,delay:0,cost:0,particle_laser:1,particle_self:46,particle_look:2,effects:[{target_type:7,effect_type:"damage",rand:{min:5,max:9}},{target_type:2,effect_type:"draw",var:1}]}}]}},HideFlags:255,display:{Name:'[{"text":"6:スナイパー対決","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【弾丸】が1以上","color":"gray","italic":false}]','[{"text":"弾丸を1使用する","color":"gray","italic":false}]','[{"text":"開幕 ","color":"green","italic":false},{"text":"標敵に5-9のダメージ、ドロー1","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 7 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dirt",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"modify_value",input:"more_attack_more",var:1},{target_type:1,effect_type:"damage",var_input:{name:"more_attack_more",mult:1}}]}},HideFlags:255,display:{Name:'[{"text":"4:モア・アタック・モア","italic":false,"color":"white"}]',Lore:['[{"text":"【連撃】+1","color":"gray","italic":false}]','[{"text":"標敵に【連撃】ダメージ","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 8 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dirt",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"modify_value",input:"more_attack_more",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:連撃","italic":false,"color":"white"}]',Lore:['[{"text":"【連撃】+1","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dirt",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:2,effect_type:"condition_input",input:"more_attack_more"},{target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:2,continue:1},target_type:1,effect_type:"damage",var:1},{condition:{id:1,min:4,continue:1},target_type:1,effect_type:"damage",var:2},{condition:{id:1,min:6,continue:1},target_type:1,effect_type:"damage",var:3},{condition:{id:1,min:8},target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"5:怒涛の攻撃","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージ","color":"gray","italic":false}]','[{"text":"【連撃:2】標敵に1ダメージ","color":"gray","italic":false}]','[{"text":"【連撃:4】標敵に2ダメージ","color":"gray","italic":false}]','[{"text":"【連撃:6】標敵に3ダメージ","color":"gray","italic":false}]','[{"text":"【連撃:8】ドロー1","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 10 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dirt",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,cost_min:2,cost_max:4,cost_type:3,cost_mods:[{name:"health",max:12,var:-1},{name:"health",max:4,var:-1}],particle_laser:0,particle_self:16,particle_look:0,effects:[{target_type:2,effect_type:"modify_value",input:"speed",var:1},{target_type:2,effect_type:"modify_value",input:"shield",var:4}]}},HideFlags:255,display:{Name:'[{"text":"4:緊急回避","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(3) ","color":"blue","italic":false},{"text":"体力が12以下","color":"gray","italic":false}]','[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(2) ","color":"blue","italic":false},{"text":"体力が4以下","color":"gray","italic":false}]','[{"text":"加速+1、シールド+4","color":"gray","italic":false}]']}}}
execute if score $list_card_count ui_temp matches 0..8 if score $rand ui_calc1 matches 11 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:dirt",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,cost_min:2,cost_max:3,cost_type:3,cost_mods:[{name:"health",max:10,var:-1}],particle_laser:0,particle_self:16,particle_look:0,effects:[{target_type:2,effect_type:"draw",var:2},{target_type:2,effect_type:"modify_value",input:"shield",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:歩法","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(2) ","color":"blue","italic":false},{"text":"体力が10以下","color":"gray","italic":false}]','[{"text":"ドロー2、シールド+1","color":"gray","italic":false}]']}}}

#data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list[-1]
#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:rotten_flesh",tag:{tmw:{id:272,type:1,enableQ:1,cg:{cost:99,effects:[]}},HideFlags:1,display:{Name:'[{"text":"99:何の効果もない","italic":false,"color":"aqua"}]',Lore:[]}}}

scoreboard players add $list_card_count ui_temp 1
execute if score $list_card_count ui_temp matches ..8 run function ui:tmw/272/id/-1/non_player/skeleton