# ネタカード
give @p minecraft:diamond{tmw:{id:272,type:1,enableQ:1,cg:{cost:5,effects:[{target_type:2,effect_type:"condition_input",input:"mana_max"},{condition:{id:1,min:5},target_type:2,effect_type:"mana_max",var:1}]}},HideFlags:255,display:{Name:'[{"text":"5:ダイヤモンドをあなたに","italic":false,"color":"white"}]',Lore:['[{"text":"マナの最大値が5以上ならマナ最大値+1","color":"gray","italic":false}]']}}

give @p tipped_arrow{HideFlags:255,Potion:"minecraft:swiftness",display:{Lore:['[{"text":"相手に25最大マナを与える","color":"gray","italic":false}]','[{"text":"発動後MPが残っていればその分のダメージを与える","color":"gray","italic":false}]'], Name:'[{"text":"20:マナストーム・あなたに","italic":false,"color":"white"}]'}, tmw: {enableQ:1, id:272, cg:{effects:[{target_type:1,effect_type:"mana_max",var:25},{target_type:1,effect_type:"damage",var_input:{name:"mana"}}], cost: 20,particle_laser:1,particle_self:1001,particle_look:1}, type: 1}}
give @p minecraft:brown_shulker_box{tmw:{id:272,type:1,enableQ:1,cg:{cost:3,effects:[{target_type:2,effect_type:"modify_value",input:"mana_max",var:3}]}},HideFlags:1,display:{Name:'[{"text":"3:ダイヤ込み可","italic":false,"color":"white"}]',Lore:['[{"text":"最大マナ+3","color":"gray","italic":false}]']}}
give @p minecraft:horn_coral_block{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,particle_laser:0,particle_self:1002,particle_look:1,effects:[{target_type:2,effect_type:"after_effect",cg:{delay_type:1,delay:0,repeat:0,name:'[{"text":"爾後夢見しあなたに","italic":false,"color":"white"}]',lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"5-7回復","color":"gray","italic":false}]','[{"text":" 自身の最大マナ+1","color":"gray","italic":false}]'],cost:0,particle_laser:0,particle_self:1002,effects:[{target_type:2,effect_type:"heal",rand:{min:5,max:7}},{target_type:2,effect_type:"modify_value",input:"mana_max",var:1}]}}]}},HideFlags:1,display:{Name:'[{"text":"4:爾後夢見しあなたに","italic":false,"color":"white"}]',Lore:['[{"text":"開幕 ","color":"green","italic":false},{"text":"5-7回復","color":"gray","italic":false}]','[{"text":" 自身の最大マナ+1","color":"gray","italic":false}]']}}
give @p minecraft:large_amethyst_bud{tmw:{id:272,type:1,enableQ:1,cg:{cost:4,effects:[{target_type:2,effect_type:"modify_value",input:"blessing",var:1},{target_type:2,effect_type:"modify_value",input:"mana_max",var:1}]}},HideFlags:1,display:{Name:'[{"text":"4:ダイヤモンドさな祝福","italic":false,"color":"white"}]',Lore:['[{"text":"【祝福】+1","color":"gray","italic":false}]','[{"text":"自身の最大マナ+1","color":"gray","italic":false}]']}}
give @p minecraft:nether_brick{tmw:{id:272,type:1,enableQ:1,cg:{cost:{amount:6},effects:[{target_type:2,effect_type:"duplication",var:1},{target_type:2,effect_type:"modify_value",input:"mana_max",var:1}]}},HideFlags:1,display:{Name:'[{"text":"6:ダイヤモンド機","italic":false,"color":"white"}]',Lore:['[{"text":"次に使うカードの効果を複製する","color":"gray","italic":false}]','[{"text":"使用後に自身の最大マナ+1","color":"gray","italic":false}]']}}
