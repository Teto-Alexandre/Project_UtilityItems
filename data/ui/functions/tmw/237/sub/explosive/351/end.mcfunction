# メガホン
    particle crit ~ ~ ~ 0.2 0.2 0.2 0.5 10 force
    playsound entity.shulker_bullet.hurt player @a ~ ~ ~ 1 0.8 0
    teleport @e[tag=ui_temp_obj] ~ -300 ~
    kill @e[tag=ui_temp_obj]