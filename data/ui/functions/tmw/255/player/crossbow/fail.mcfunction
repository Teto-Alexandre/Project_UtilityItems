# 発射音
    playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0
    tag @s[tag=ui_temp_fail] remove ui_temp_fail

# 変更した
    scoreboard players set $changed ui_temp 1