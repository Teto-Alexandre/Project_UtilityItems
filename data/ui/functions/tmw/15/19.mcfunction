#
    data merge storage ui:common {input:{Mode:"create",Var:8}}
    execute positioned ~ ~1 ~ positioned ^ ^ ^ run function ui:common/particle

#
    kill @e[tag=ui_temp_target]

# 発動成功
    scoreboard players set $success ui_temp 1