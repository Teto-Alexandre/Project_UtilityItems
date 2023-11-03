give @p minecraft:music_disc_11{tmw:{id:272,type:1,enableQ:1,cg:{cost:12,cost_min:3,cost_type:1,cost_mods:[{name:"turn_count",pow:0,mult:-1.0,add:0}],effects:[{target_type:1,effect_type:"damage",var:5}]}},HideFlags:255,display:{Name:'[{"text":"12:ワールドレコード","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"3未満にならない ","color":"blue","italic":false},{"text":"経過ターン数","color":"gray","italic":false}]','[{"text":"標敵に5ダメージ","color":"gray","italic":false}]']}}
give @p minecraft:music_disc_13{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,cost_min:2,cost_max:3,cost_type:1,cost_mods:[{name:"turn_count",pow:0,mult:-2,add:20}],effects:[{target_type:2,effect_type:"heal",var_input:{name:"turn_count",mod:5}}]}},HideFlags:255,display:{Name:'[{"text":"3:ワールドディスク","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(2) ","color":"blue","italic":false},{"text":"経過ターン数が11以上","color":"gray","italic":false}]','[{"text":"経過ターン数を5で割った余りだけ回復","color":"gray","italic":false}]']}}
give @p minecraft:string{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"modify_value",input:"turn_count",var:2},{target_type:2,effect_type:"heal",var:1}]}},HideFlags:255,display:{Name:'[{"text":"3:凪くもっと凪く","italic":false,"color":"white"}]',Lore:['[{"text":"【経過ターン数】+2","color":"gray","italic":false}]','[{"text":"自身を1回復","color":"gray","italic":false}]']}}
give @p minecraft:iron_shovel{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"modify_value",input:"turn_count",var:1},{target_type:2,effect_type:"draw",var:2}]}},HideFlags:255,display:{Name:'[{"text":"4:針進","italic":false,"color":"white"}]',Lore:['[{"text":"【経過ターン数】+1","color":"gray","italic":false}]','[{"text":"ドロー2","color":"gray","italic":false}]']}}
give @p minecraft:music_disc_ward{tmw:{id:272,type:1,enableQ:1,cg:{cost:7,cost_min:5,cost_max:7,cost_type:1,cost_mods:[{name:"turn_count",pow:0,mult:-2,add:30}],effects:[{target_type:2,effect_type:"modify_value",input:"armor",var:1},{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:2,name:'[{"text":"ワールドドキュメント","italic":false,"color":"white"}]',lore:['[{"text":"二度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"装甲+1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:17,effects:[{target_type:7,effect_type:"modify_value",input:"armor",var:1}]}}]}},HideFlags:255,display:{Name:'[{"text":"7:ワールドドキュメント","italic":false,"color":"white"}]',Lore:['[{"text":"軽減 ","color":"aqua","italic":false},{"text":"(5) ","color":"blue","italic":false},{"text":"経過ターン数が16以上","color":"gray","italic":false}]','[{"text":"装甲+1","color":"gray","italic":false}]','[{"text":"二度 ","color":"yellow","italic":false},{"text":"開幕 ","color":"green","italic":false},{"text":"装甲+1","color":"gray","italic":false}]']}}

give @p minecraft:clock{tmw:{id:272,type:1,enableQ:1,cg:{cost:9,effects:[{target_type:2,effect_type:"modify_value",input:"turn_count",var:3},{target_type:2,effect_type:"mana_max",var:1},{target_type:2,effect_type:"draw",var:1},{target_type:2,effect_type:"condition_input",input:"turn_count",mute:1},{condition:{id:1,min:20},target_type:2,effect_type:"modify_value",input:"turn_count",var:3}]}},HideFlags:255,display:{Name:'[{"text":"9:恒時計の現出","italic":false,"color":"white"}]',Lore:['[{"text":"【経過ターン数】+3","color":"gray","italic":false}]','[{"text":"最大マナ+1、ドロー1","color":"gray","italic":false}]','[{"text":"【経過ターン数:20】: さらに経過ターン数+3","color":"gray","italic":false}]']}}
give @p minecraft:gold_block{tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:100000,cost_min:0,cost_type:1,cost_mods:[{name:"turn_count",pow:2,mult:-1.0,add:0}],effects:[{target_type:3,effect_type:"damage",var_input:{name:"turn_count"}}]}},HideFlags:255,display:{Name:'[{"text":"10^5:遥か幻の恒時計","italic":false,"color":"white"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"軽減 ","color":"aqua","italic":false},{"text":"経過ターン数^2","color":"gray","italic":false}]','[{"text":"全ての敵を経過ターン数だけダメージ","color":"gray","italic":false}]']}}
