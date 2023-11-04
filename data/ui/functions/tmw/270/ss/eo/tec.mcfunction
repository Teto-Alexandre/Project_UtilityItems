#> ui:tmw/270/ss/eo/tec
#
# #タレットを管理する
#
# @within function ui:tmw/270/ss/s_team_id

# チームを認識して敵味方の識別タグを付与する
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[tag=ui_tec] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team_control
function ui:common/tag_temp_team/

#
#tellraw @a [{"text":"Team> "},{"text":": "},{"selector":"@e[tag=ui_temp_team]"}]
#tellraw @a [{"text":"TeamOperation> "},{"score":{"name": "$team","objective": "ui_temp"},"color": "green"},{"text":": "},{"selector":"@e[tag=ui_temp_team_control]"}]
execute as @e[limit=1,tag=ui_temp_team_control] run function ui:tmw/270/ss/eo/idc

# 一時タグ削除
tag @e[tag=ui_temp_team_control] remove ui_tec
tag @e[tag=ui_temp_team_control] remove ui_temp_team_control

# 再帰
execute if entity @e[tag=ui_tec] as @e[limit=1,tag=ui_tec] run function ui:tmw/270/ss/eo/tec
