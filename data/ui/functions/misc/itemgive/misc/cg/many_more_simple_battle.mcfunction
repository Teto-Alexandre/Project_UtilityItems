give @p minecraft:white_candle{tmw:{id:272,type:1,enableQ:1,cg:{only_one:1,cost:10,particle_laser:1,particle_self:1002,effects:[{effect_type:"after_effect",cg:{cost:0,repeat:-1,delay:1,delay_type:2,delay_base:1,effects:[{target_type:4,effect_type:"modify_death_effect",effect_mode:"delete",merge_checker:{id:"sogi"},mute:1},{target_type:4,effect_type:"death_effect",effect_mode:"give",cg:{id:"sogi",cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:7,effect_type:"modify_value",input:"soul",var:3}]}}]}}]}},HideFlags:1,display:{Name:'[{"text":"10:葬儀","italic":false,"color":"white"}]',Lore:['[{"text":"【唯一】","color":"gold","italic":false},{"text":": スロット１に入れることで唯一に指定できる","color": "gray","italic":false}]','[{"text":"閉幕 ","color":"green","italic":false},{"text":"全員に以下の効果を付与 ▼","color":"gray","italic":false}]','[{"text":" 死亡時 ","color":"green","italic":false},{"text":"付与者に","color":"gray","italic":false},{"text":"【魂】","color":"red","italic":false},{"text":"+3","color":"gray","italic":false}]']}}

give @p minecraft:carrot_on_a_stick{CustomModelData:180014,tmw:{id:272,type:1,enableQ:1,cg:{cost:{amount:7,type:2,mods:[{name:"soul",min:15}]},particle_laser:1,particle_self:1001,particle_look:5,effects:[{target_type:1,effect_type:"damage",var:20},{target_type:1,effect_type:"modify_value",input:"soul_break",var:5},{target_type:2,effect_type:"modify_value",input:"soul",var:-15}]}},HideFlags:255,display:{Name:'[{"text":"7:先征く者の悲鳴","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【魂】が15以上","color":"gray","italic":false}]','[{"text":"標敵に20のダメージと【魂壊】+5、【魂】-15","color":"gray","italic":false}]']}}

give @p minecraft:dragon_breath{tmw:{id:272,type:1,enableQ:1,cg:{cost:{amount:4,type:2,mods:[{name:"soul",min:6}]},particle_self:1002,effects:[{target_type:2,effect_type:"modify_value",input:"regeneration",var:4},{target_type:2,effect_type:"modify_value",input:"soul",var:-6}]}},HideFlags:255,display:{Name:'[{"text":"4:吸魂","italic":false,"color":"white"}]',Lore:['[{"text":"条件 ","color":"light_purple","italic":false},{"text":"【魂】が6以上","color":"gray","italic":false}]','[{"text":"【再生】+4、【魂】-6","color":"gray","italic":false}]']}}

give @p sculk_shrieker{display:{Name:'{"text":"6:その声の宛先は","color":"white","italic":false}',Lore:['[{"text":"五幕後 ","color":"green","italic":false},{"text":"【魂】+7","color":"gray","italic":false}]']},HideFlags:1,tmw:{enableQ: 1, id: 272, cg: {effects: [{target_type: 2, cg: {delay_type: 1, effects: [{target_type: 2, cg: {delay_type: 1, effects: [{target_type: 2, input: "repeat", effect_type: "condition_input"}, {target_type: 2, condition: {max: 1, id: 1}, effect_type:"modify_value",input:"soul",var:6}], delay: 0, cost: 0, lore: ['[{"text":"五幕後 ","color":"green","italic":false},{"text":"【魂】+7","color":"gray","italic":false}]'], repeat: 5, name: '[{"text":"その声の宛先は","italic":false,"color":"white"}]'}, effect_type: "after_effect"}], delay: 0, cost: 0}, effect_type: "after_effect"}], cost: 6, particle_laser: 1, particle_self: 46, particle_look: 2}, type: 1}} 1