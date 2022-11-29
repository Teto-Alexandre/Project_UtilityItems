# ツルハシを使う標準準備動作

# 統合
    scoreboard players set @s ui_break 1

# id共有
    scoreboard players operation $id ui_temp = @s ui_id

#
    execute as @e[type=item,nbt={Age:0s},distance=..6,tag=!ui_drop_breaked] run function ui:misc/act/break/hoe/item

# 全体
    scoreboard players set $tick.harv ui_world 1
    scoreboard players set $tick.break ui_world 1