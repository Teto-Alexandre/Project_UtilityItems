#> ui:misc/first
#
# tickの最初に実行
#
# 常時監視するスコアをリセットする
#
# @public

# Tickの最初にやること

##鯖から抜けてた人対策
    execute as @a[scores={ui_lg=1..}] run function ui:misc/leave_game/

##メニューキル
    kill @e[type=item,nbt={Item:{tag:{ui:{ismenu:1}}}}]

##タグが付いてる人の周囲の特定アイテムをキル
    execute as @e[tag=ui_unlock] at @s run function ui:misc/craft

##汎用浮遊リセット
    execute as @e[tag=ui_kb] run function ui:misc/levitation

##モーションスライムキル
    execute if score $motionslime ui_world matches 1 run function ui:misc/kill_slime

## 操作要件リセット
    execute as @a[tag=tmw_shield] run function ui:misc/act/first/shield