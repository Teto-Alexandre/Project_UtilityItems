#見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 0.6 ~ ~ ~ 0 0 0 0 1 force @a[tag=!tmw_256_nolaser]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 0.6 ~ ~ ~ 0 0 0 0 1 force @a[tag=!tmw_256_nolaser]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 0.6 ~ ~ ~ 0 0 0 0 1 force @a[tag=!tmw_256_nolaser]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 0.6 ~ ~ ~ 0 0 0 0 1 force @a[tag=!tmw_256_nolaser]

#
    teleport @s ^ ^ ^2
