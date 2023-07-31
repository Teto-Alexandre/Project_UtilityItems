# 共通
    playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1 0
    tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[天地の契約書]","color":"gold"},{"text":"が契約されました","color":"gray"}]

#
    tag @s add tmw_501_22
    scoreboard players add $tmw_501_22 ui_world 1
    # SSロジックを読み込み
    schedule function ui:tmw/501/contract/22/ss 1t append
