# 種類チェック
execute store result score $type ui_temp run data get entity @s SelectedItem.tag.tmw.type

# 一括破壊実行
    ##範囲破壊3*3*3
    execute unless score $type ui_temp matches 1.. as @s[scores={ui_dig=1}] at @s run function ui:tmw/203/active
    ##範囲破壊5*5*5
    execute if score $type ui_temp matches 1 as @s[scores={ui_dig=1}] at @s run function ui:tmw/203/active2