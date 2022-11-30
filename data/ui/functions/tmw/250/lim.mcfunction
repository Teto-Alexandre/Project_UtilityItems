#誰かがid:250持ったら各自に実行する
    execute as @a store result score @s ui_calc1 run data get entity @s SelectedItem.tag.tmw.type
    execute as @a[scores={ui_tmw_id=250}] if score @s ui_calc1 matches -1 run function ui:tmw/250/main
    execute as @a[scores={ui_tmw_id=250}] if score @s ui_calc1 matches 1.. if score @s ui_use1 matches 1.. at @s run function ui:tmw/250/skills/main
