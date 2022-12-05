#
    execute as @e[tag=ui_common_mine_square_core] run function ui:common/mine_square/count

# マインスイーパー
    function ui:common/mine_square/system/tick

# SSロジック維持
    execute if entity @e[tag=ui_common_mine_square] run schedule function ui:common/mine_square/ss 2t replace
