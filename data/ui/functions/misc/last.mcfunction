# Tickの最後にやること

    ## 操作要件リセット
        execute as @a[tag=tmw_use_c] run function ui:misc/act/uc.rst
        execute as @a[scores={ui_di=1..}] run function ui:misc/act/di
        execute as @a[scores={ui_use2_tc=1..}] run function ui:misc/act/uc.c
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/uc
        execute as @a[tag=tmw_use] run function ui:misc/act/dd
        tag @a[tag=tmw_oh_n] remove tmw_oh_n
        tag @a[tag=tmw_oh_s] remove tmw_oh_s

    ## 次tick用の手に何も持ってない検知
        tag @a[tag=tmw_mh_calc] remove tmw_mh_calc
        execute as @a[nbt=!{SelectedItem:{}}] run tag @s add tmw_mh_calc
        tag @a[tag=tmw_oh_calc] remove tmw_oh_calc
        execute as @a[nbt=!{Inventory:[{Slot:-106b}]}] run tag @s add tmw_oh_calc

    ## 次tick用の食べ物の複合検知
        execute as @a unless entity @s[scores={ui_tmw_id=400..499}] run function ui:food/offhand

    ## スニークチャージ用カウントアップ
        scoreboard players add @a[scores={ui_st=1..}] ui_st2 1
        scoreboard players set @a[scores={ui_st=..0}] ui_st2 0
        scoreboard players set @a[scores={ui_st=1..}] ui_st 0

    ## 上向いてる検知
        scoreboard players reset @a[x_rotation=-89..] ui_face_up
        scoreboard players add @a[x_rotation=-90] ui_face_up 1

    ## 条件増加スコアのリセット
        scoreboard players reset @a[scores={ui_usec=1..}] ui_usec
        scoreboard players reset @a[scores={ui_usep=1..}] ui_usep
        scoreboard players reset @a[scores={ui_cookie=1..}] ui_cookie
        scoreboard players reset @a[scores={ui_m_dd=1..}] ui_m_dd