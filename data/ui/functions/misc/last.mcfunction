#> ui:misc/last
#
# tickの最後に実行
#
# 常時監視するスコアをリセットする
#
# @public

# Tickの最後にやること

    ## 操作要件リセット
        execute as @a[tag=tmw_use_c] run function ui:misc/act/uc.rst
        execute as @a[scores={ui_di=1..}] run function ui:misc/act/di
        execute as @a[scores={ui_use2_tc=1..}] run function ui:misc/act/uc.c
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/uc
        execute as @a[tag=tmw_use] run function ui:misc/act/dd
        execute as @a[scores={ui_usec=1..}] run function ui:misc/act/usec
        execute as @a[scores={ui_break=1..}] run function ui:misc/act/break/last
        #execute as @a[tag=tmw_shield] run function ui:misc/act/last/shield
        tag @a[tag=tmw_oh_n] remove tmw_oh_n
        tag @a[tag=tmw_oh_s] remove tmw_oh_s

    ## 次tick用の手に何も持ってない検知
        tag @a[tag=tmw_mh_calc] remove tmw_mh_calc
        execute as @a[nbt=!{SelectedItem:{}}] run tag @s add tmw_mh_calc
        tag @a[tag=tmw_oh_calc] remove tmw_oh_calc
        execute as @a[nbt=!{Inventory:[{Slot:-106b}]}] run tag @s add tmw_oh_calc

    ## 次tick用の食べ物の複合検知
        execute as @a unless entity @s[scores={ui_tmw_id=400..499}] run function ui:food/offhand

    ## TMWのidを保存
        execute as @a run scoreboard players operation @s ui_tmw_id_old = @s ui_tmw_id
        execute as @a run scoreboard players operation @s ui_tmw_id_old2 = @s ui_tmw_id2
        
    ## クールタイム
        scoreboard players remove @a[scores={ui_ct=1..}] ui_ct 1
        scoreboard players reset @a[scores={ui_ct=..0}] ui_ct

    ## スニークチャージ用カウントアップ
        scoreboard players add @a[scores={ui_st=1..}] ui_st2 1
        scoreboard players set @a[scores={ui_st=..0}] ui_st2 0
        scoreboard players set @a[scores={ui_st=1..}] ui_st 0

    ## 上向いてる検知
        scoreboard players reset @a[x_rotation=-89..] ui_face_up
        scoreboard players add @a[x_rotation=-90] ui_face_up 1

    ## 条件増加スコアのリセット
        scoreboard players reset @a[scores={ui_uses=1..}] ui_uses
        scoreboard players reset @a[scores={ui_usep=1..}] ui_usep
        scoreboard players reset @a[scores={ui_move_s=1..}] ui_move_s
        scoreboard players reset @a[scores={ui_move_w=1..}] ui_move_w
        scoreboard players reset @a[scores={ui_move_d=1..}] ui_move_d
        scoreboard players reset @a[scores={ui_cookie=1..}] ui_cookie
        scoreboard players reset @a[scores={ui_m_dd=1..}] ui_m_dd