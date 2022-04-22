#
    execute store result score temp ui_temp run data get storage ui:temp tag.tmw.amount 1
    execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players remove temp ui_temp 1
    item modify entity @s container.35 ui:tempout
    execute in overworld run item replace entity @s container.34 from block 0 0 0 container.0
