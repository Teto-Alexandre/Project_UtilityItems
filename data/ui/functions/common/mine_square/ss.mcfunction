# マインスイーパー
    execute as @e[tag=ui_common_mine_square] at @s run function ui:common/mine_square/system/tick

# SSロジック維持
    execute if entity @e[tag=ui_common_mine_square] run schedule function ui:common/mine_square/ss 1t append

#
    scoreboard players set $calc ui_temp 0
    scoreboard players set $calc2 ui_temp 0
    execute as @e[tag=ui_common_mine_square,tag=!ui_common_mine_square_bomb] at @s unless entity @e[tag=ui_common_mine_square_bomb,distance=..0.5] run scoreboard players add $calc ui_temp 1
    execute as @e[tag=ui_common_mine_square_clear] run scoreboard players add $calc2 ui_temp 1
    #tellraw @a [{"score":{"name":"$calc","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$calc2","objective":"ui_temp"}}]
    execute if score $calc2 ui_temp matches 1.. if score $calc ui_temp <= $calc2 ui_temp run function ui:common/mine_square/system/clear