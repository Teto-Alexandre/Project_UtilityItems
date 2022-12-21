#
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^5 ^ ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^2.5 ^ ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^0 ^ ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^-2.5 ^ ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^-5 ^ ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^ ^5 ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^ ^2.5 ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^ ^-2.5 ^ run function ui:common/particle
    data merge storage ui:common {input:{Mode:"create",Var:7}}
    execute positioned ~ ~1 ~ positioned ^ ^-5 ^ run function ui:common/particle

# 発動成功
    scoreboard players set $success ui_temp 1