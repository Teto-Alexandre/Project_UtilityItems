# そのままモーションを入れていいなんてエンティティは楽だなぁ！

#
    function oh_my_dat:please

#
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp set value {Motion:[0,0,0]}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[0] int 1 run data get storage ui:common input.Motion[0] 100
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[1] int 1 run data get storage ui:common input.Motion[1] 100
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[2] int 1 run data get storage ui:common input.Motion[2] 100
    tag @s add ui_common_motion_player
    schedule function ui:common/motion/ss_pl/ 1t append