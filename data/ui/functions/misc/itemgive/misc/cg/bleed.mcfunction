# 裂傷
give @p minecraft:iron_nugget{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,particle_laser:1,particle_look:6,effects:[{target_type:5,target_count:2,effect_type:"after_effect",effect_mode:"give",cg:{cost:{bypass:1,amount:0},effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration_manager"}},{condition:{id:1,max:0},target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:5,id:"laceration_manager",cost:{bypass:1,amount:0},particle_laser:0,particle_target:6,effects:[{target_type:2,effect_type:"condition_input",input:"regeneration",mute:1},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"は","color":"white","italic":false},{"text":"再生","color":"#ff9966"},{"text":"している！","color":"white","italic":false}]'},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"bleed",mute:1,var_input:{input:"condition",mute:1}},{condition:{id:1,min:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"の","color":"white","italic":false},{"text":"出血","color":"dark_red"},{"text":"が","color":"white","italic":false},{"score":{"name":"@s","objective":"ui_tmw272_bleed"}},{"text":"になった！","color":"white","italic":false}]'}]}},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:2,id:"laceration",cost:{bypass:1,amount:0}}}]}}]}},HideFlags:255,display:{Name:'[{"text":"3:惨刃飛翔","italic":false,"color":"white"}]',Lore:['[{"text":"ランダムな敵2体を対象とする","color":"gray","italic":false}]','[{"text":"2ターンの","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"(再生が0以下なら出血+1)","color":"gray","italic":false}]']}}
give @p minecraft:iron_sword{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_look:5,effects:[{target_type:1,effect_type:"damage",rand:{min:1,max:2}},{target_type:1,effect_type:"after_effect",effect_mode:"give",cg:{cost:{bypass:1,amount:0},effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration_manager"}},{condition:{id:1,max:0},target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:5,id:"laceration_manager",cost:{bypass:1,amount:0},particle_laser:0,particle_target:6,effects:[{target_type:2,effect_type:"condition_input",input:"regeneration",mute:1},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"は","color":"white","italic":false},{"text":"再生","color":"#ff9966"},{"text":"している！","color":"white","italic":false}]'},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"bleed",mute:1,var_input:{input:"condition",mute:1}},{condition:{id:1,min:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"の","color":"white","italic":false},{"text":"出血","color":"dark_red"},{"text":"が","color":"white","italic":false},{"score":{"name":"@s","objective":"ui_tmw272_bleed"}},{"text":"になった！","color":"white","italic":false}]'}]}},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:3,id:"laceration",cost:{bypass:1,amount:0}}}]}}]}},HideFlags:255,display:{Name:'[{"text":"4:残刃裂剣","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1-2ダメージ","color":"gray","italic":false}]','[{"text":"3ターンの","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"(再生が0以下なら出血+1)","color":"gray","italic":false}]']}}
give @p minecraft:netherite_sword{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,particle_laser:1,particle_look:5,effects:[{target_type:1,effect_type:"damage",rand:{min:1,max:3}},{target_type:1,effect_type:"after_effect",effect_mode:"give",cg:{cost:{bypass:1,amount:0},effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration_manager"}},{condition:{id:1,max:0},target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:5,id:"laceration_manager",cost:{bypass:1,amount:0},particle_laser:0,particle_target:6,effects:[{target_type:2,effect_type:"condition_input",input:"regeneration",mute:1},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"は","color":"white","italic":false},{"text":"再生","color":"#ff9966"},{"text":"している！","color":"white","italic":false}]'},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"bleed",mute:1,var_input:{input:"condition",mute:1}},{condition:{id:1,min:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"の","color":"white","italic":false},{"text":"出血","color":"dark_red"},{"text":"が","color":"white","italic":false},{"score":{"name":"@s","objective":"ui_tmw272_bleed"}},{"text":"になった！","color":"white","italic":false}]'}]}},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:6,id:"laceration",cost:{bypass:1,amount:0}}}]}}]}},HideFlags:255,display:{Name:'[{"text":"9:砕刃割剣","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に1-3ダメージ","color":"gray","italic":false}]','[{"text":"6ターンの","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"(再生が0以下なら出血+1)","color":"gray","italic":false}]']}}

give @p red_dye{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_target:5,effects:[{target_type:1,effect_type:"damage",var:2},{target_type:1,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1},target_type:1,effect_type:"after_effect",cg:{delay_type:0,delay:0,delay_base:1,repeat:3,cost:0,id:"bleed_triple",particle_target:6,effects:[{target_type:7,effect_type:"damage",no_strength:1,var:1},{target_type:7,effect_type:"modify_value",input:"bleed",var:1}]}}]}},HideFlags:255,display:{Name:'[{"text":"6:連破鋭刃","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2ダメージ、","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"があるなら以下を追加","color":"gray","italic":false}]','[{"text":"対象に1ダメージを3回与え、一回ごとに","color":"gray","italic":false},{"text":"【出血】","color":"dark_red","italic":false},{"text":"+1","color":"gray","italic":false}]','{"text":"追加ダメージは攻撃力の影響を受けない","color":"blue","italic":false}']}}

give @p minecraft:iron_axe{tmw:{id:272,type:1,enableQ:1,cg:{cost:6,particle_laser:1,particle_self:0,particle_look:5,effects:[{target_type:1,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,max:0,continue:1},target_type:1,effect_type:"damage",rand:{min:2,max:5}},{condition:{id:1,min:1},target_type:1,effect_type:"damage",rand:{min:5,max:8}},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"6:断活","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に2-5ダメージ、ドロー1","color":"gray","italic":false}]','[{"text":"標敵に","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"があるならダメージ+3","color":"gray","italic":false}]']}}
give @p minecraft:netherite_axe{tmw:{id:272,type:1,enableQ:1,cg:{cost:10,particle_laser:1,particle_self:0,particle_look:5,effects:[{target_type:1,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{target_type:1,effect_type:"damage",var_input:{input:"condition",mult:3,mute:1}}]}},HideFlags:255,display:{Name:'[{"text":"10:断骨","italic":false,"color":"white"}]',Lore:['[{"text":"標敵に","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"の三倍のダメージ","color":"gray","italic":false}]']}}

give @p minecraft:redstone{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:1,particle_self:6,effects:[{target_type:1,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{target_type:4,effect_type:"condition_input",effect_mode:"add",input:"bleed"},{target_type:2,effect_type:"heal",var_input:{input:"condition",mute:1}},{condition:{id:1,min:3,continue:1},target_type:2,effect_type:"draw",var:1},{condition:{id:1,min:6,continue:1},target_type:2,effect_type:"mana_max",var:1}]}},HideFlags:255,display:{Name:'[{"text":"4:血液回収","italic":false,"color":"white"}]',Lore:['[{"text":"全てのプレイヤーの","color":"gray","italic":false},{"text":"【出血】","color":"dark_red","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"の値だけ回復","color":"gray","italic":false}]','[{"text":"【回復:3】","color":"dark_red","italic":false},{"text":"ドロー1","color":"gray","italic":false}]','[{"text":"【回復:6】","color":"dark_red","italic":false},{"text":"自身の最大マナ+1","color":"gray","italic":false}]']}}
give @p minecraft:red_carpet{tmw:{id:272,type:1,enableQ:1,cg:{cost:2,particle_laser:1,particle_self:6,effects:[{target_type:2,effect_type:"modify_value",input:"bleed",var:2},{target_type:2,effect_type:"heal",var:2},{target_type:2,effect_type:"draw",var:1}]}},HideFlags:255,display:{Name:'[{"text":"2:瀉血活揚","italic":false,"color":"white"}]',Lore:['[{"text":"自身の","color":"gray","italic":false},{"text":"【出血】","color":"dark_red","italic":false},{"text":"+2、2回復、ドロー1","color":"gray","italic":false}]']}}


give @p minecraft:netherrack{tmw:{this_id_not_id:272,type:1,enableQ:1,cg:{only_one:1,cost:{amount:0,bypass:1},particle_self:6,oo_draw_effect:{cost:{amount:0,bypass:1},effects:[{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"health",var:50},{target_type:2,effect_type:"mana_max",var:1},{target_type:2,effect_type:"death_effect",cg:{name:'[{"text":"揺山血海 - 廻","italic":false,"color":"white"}]',lore:['[{"text":"【体力】=100、【無敵】=1、【執念】=1","color":"gray","italic":false}]'],cost:{amount:0,bypass:1},particle_laser:0,particle_self:35,effects:[{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"health",var:100},{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"invulnerable",var:1},{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"tenacity",var:1},{target_type:2,effect_type:"after_effect",cg:{delay_type :1,delay:0,repeat:-1,name:'[{"text":"揺山血海 - 廻","italic":false,"color":"white"}]', lore:['[{"text":"カルマ=0、回避+1-8","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:0,effects:[{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"karma",var:0,mute:1},{target_type:2,effect_type:"modify_value",input:"dodge",rand:{min:1,max:8}},{target_type:2,effect_type:"modify_value",input:"hexproof",rand:{min:0,max:1}}]}},{target_type:3,effect_type:"after_effect",effect_mode:"give",cg:{cost:{bypass:1,amount:0},effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration_manager"}},{condition:{id:1,max:0},target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:5,id:"laceration_manager",cost:{bypass:1,amount:0},particle_laser:0,particle_target:6,effects:[{target_type:2,effect_type:"condition_input",input:"regeneration",mute:1},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"は","color":"white","italic":false},{"text":"再生","color":"#ff9966"},{"text":"している！","color":"white","italic":false}]'},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"bleed",mute:1,var_input:{input:"condition",mute:1}},{condition:{id:1,min:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"の","color":"white","italic":false},{"text":"出血","color":"dark_red"},{"text":"が","color":"white","italic":false},{"score":{"name":"@s","objective":"ui_tmw272_bleed"}},{"text":"になった！","color":"white","italic":false}]'}]}},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:-1,id:"laceration",cost:{bypass:1,amount:0}}}]}}]}},{target_type:2,effect_type:"death_effect",cg:{name:'[{"text":"揺山血海 - 悠","italic":false,"color":"white"}]',lore:['[{"text":"【体力】=150、【無敵】=1、【不死】=1","color":"gray","italic":false}]'],cost:{amount:0,bypass:1},particle_laser:0,particle_self:35,effects:[{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"health",var:150},{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"invulnerable",var:1},{target_type:2,effect_type:"modify_value",effect_mode:"set",input:"undying",var:1},{target_type:2,effect_type:"after_effect",cg:{delay_type :1,delay:0,repeat:-1,name:'[{"text":"揺山血海 - 悠","italic":false,"color":"white"}]', lore:['[{"text":"【透明化】+0-1、【封印】-1、ドロー2","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:0,effects:[{target_type:2,effect_type:"modify_value",input:"invisible",rand:{min:0,max:1}},{target_type:2,effect_type:"modify_value",input:"seal",var:-1},{target_type:2,effect_type:"draw",var:2}]}},{target_type:2,effect_type:"after_effect",cg:{cost:{amount:0,bypass:1},delay:0,delay_type:0,effects:[{effect_type:"condition_input",input:"darkness",mute:1,target_type:2},{condition:{continue:1,id:1,min:1},effect_mode:"set",effect_type:"modify_value",input:"darkness",mute:1,target_type:2,var:0},{condition:{id:1,min:1},effect_type:"show_text",target_type:9,text:'[{"selector":"@s"},{"text":"の","color":"gray"},{"text":"【暗闇】","color":"#0066cc"},{"text":"は","color":"gray"},{"text":"無効化された","color":"gray"}]'},{effect_type:"condition_input",input:"stun",mute:1,target_type:2},{condition:{continue:1,id:1,min:1},effect_mode:"set",effect_type:"modify_value",input:"stun",mute:1,target_type:2,var:0},{condition:{id:1,min:1},effect_type:"show_text",target_type:9,text:'[{"selector":"@s"},{"text":"の","color":"gray"},{"text":"【行動不能】","color":"gray"},{"text":"は","color":"gray"},{"text":"無効化された","color":"gray"}]'},{effect_type:"condition_input",input:"shock",mute:1,target_type:2},{condition:{continue:1,id:1,min:1},effect_mode:"set",effect_type:"modify_value",input:"shock",mute:1,target_type:2,var:0},{condition:{id:1,min:1},effect_type:"show_text",target_type:9,text:'[{"selector":"@s"},{"text":"の","color":"gray"},{"text":"【帯電】","color":"#cccc00"},{"text":"は","color":"gray"},{"text":"無効化された","color":"gray"}]'}],id:"blood_heart",repeat:-1}},{target_type:3,effect_type:"after_effect",effect_mode:"give",cg:{cost:{bypass:1,amount:0},effects:[{target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration_manager"}},{condition:{id:1,max:0},target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:5,id:"laceration_manager",cost:{bypass:1,amount:0},particle_laser:0,particle_target:6,effects:[{target_type:2,effect_type:"condition_input",input:"regeneration",mute:1},{condition:{id:1,min:1,continue:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"は","color":"white","italic":false},{"text":"再生","color":"#ff9966"},{"text":"している！","color":"white","italic":false}]'},{condition:{id:1,max:0},target_type:2,effect_type:"modify_after_effect",export_condition:1,merge_checker:{id:"laceration"}},{condition:{id:1,min:1,continue:1},target_type:2,effect_type:"modify_value",input:"bleed",mute:1,var_input:{input:"condition",mute:1}},{condition:{id:1,min:1},target_type:9,effect_type:"show_text",text:'["",{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":": ","color":"gray","italic":false},{"selector":"@s"},{"text":"の","color":"white","italic":false},{"text":"出血","color":"dark_red"},{"text":"が","color":"white","italic":false},{"score":{"name":"@s","objective":"ui_tmw272_bleed"}},{"text":"になった！","color":"white","italic":false}]'}]}},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:-1,id:"laceration",cost:{bypass:1,amount:0}}}]}}]}}]}}},HideFlags:1,display:{Name:'[{"text":"x:揺山血海","italic":false,"color":"white"}]',Lore:['[{"text":"唯一 ","color":"gold","italic":false},{"text":"開戦 ","color":"green","italic":false},{"text":"HP = 50、最大マナ+1","color":"gray","italic":false}]','[{"text":"廻 ","color":"yellow","italic":false},{"text":"死亡時 ","color":"green","italic":false},{"text":"【体力】=100、【無敵】=1、【執念】=1","color":"gray","italic":false}]','[{"text":" 開幕 ","color":"green","italic":false},{"text":"【カルマ】=0、【回避】+1-8、【呪禁】+0-1","color":"gray","italic":false}]','[{"text":" 全敵に永続の","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"(再生が0以下なら出血+1)","color":"gray","italic":false}]','[{"text":"悠 ","color":"yellow","italic":false},{"text":"死亡時 ","color":"green","italic":false},{"text":"【体力】=150、【無敵】=1、【不死】=1","color":"gray","italic":false}]','[{"text":" 開幕 ","color":"green","italic":false},{"text":"【透明化】+0-1、【封印】-1、ドロー2","color":"gray","italic":false}]','[{"text":" 常時 ","color":"green","italic":false},{"text":"【行動不能】【暗闇】【帯電】を無効化","color":"gray","italic":false}]','[{"text":" 全敵に永続の","color":"gray","italic":false},{"text":"【裂傷】","color":"#cc0000","italic":false},{"text":"(再生が0以下なら出血+1)","color":"gray","italic":false}]']}}