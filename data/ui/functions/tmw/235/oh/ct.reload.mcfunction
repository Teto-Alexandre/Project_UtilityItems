# リロード中のサウンド
    execute if score $cooltime ui_temp matches 15 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 1.6 0
    execute if score $cooltime ui_temp matches 10 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 1.8 0
    execute if score $cooltime ui_temp matches 5 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 2 0
    execute if score $cooltime ui_temp matches 0 at @s run playsound entity.player.levelup player @a ~ ~ ~ 1 1.8 0

# This is 耐久管理
    scoreboard players operation $time ui_temp = $cooltime ui_temp
    scoreboard players operation $time ui_temp *= #100 ui_num
    scoreboard players operation $time ui_temp /= $temp ui_temp
    scoreboard players operation $time ui_temp > #5 ui_num
    scoreboard players operation $time ui_temp < #95 ui_num
    item modify entity @s weapon.offhand ui:gun/value/damage.ct