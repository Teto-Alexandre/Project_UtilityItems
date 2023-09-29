data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list append value {id:"minecraft:red_dye",tag:{tmw:{id:272,type:1,enableQ:1,cg:{name:"attack1",cost:1,effects:[{target_type:1,effect_type:10001,var:1},{target_type:1,effect_type:1,var:1}]}},HideFlags:1,display:{Name:'[{"text":"1:軽い攻撃","italic":false,"color":"white"}]',Lore:['[{"text":"相手に１ダメージ与える","color":"gray","italic":false}]']}}}

scoreboard players add $list_card_count ui_temp 1
execute if score $list_card_count ui_temp matches ..8 run function ui:tmw/272/id/-1/non_player/hc_loop