# データ取り
    execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.rt
    execute store result score $reload ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.now.reload
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp -= $time ui_temp

# リロード中のサウンドと耐久値管理はココ
    execute if score $reload ui_temp matches 1 run function ui:tmw/235/oh/ct.reload

# 書き込み
    #tellraw @a {"score":{"name":"$cooltime","objective":"ui_temp"}}
    execute if score $cooltime ui_temp matches ..0 run function ui:tmw/235/oh/ct.comp
    #execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 0.5 2 0