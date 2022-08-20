# ノクバ処理
    tp @s @s
    effect give @s[nbt=!{Health:0.0f}] levitation 1 40 true
    tag @s[nbt=!{Health:0.0f}] add ui_temp_lev
    schedule function ui:misc/act/lev 1t append
    execute facing entity @e[tag=ui_temp_target,sort=nearest,limit=1] feet positioned ^ ^ ^0.35 run function ui:common/projectile/hit.kb
    schedule function ui:misc/kill_slime 2t append