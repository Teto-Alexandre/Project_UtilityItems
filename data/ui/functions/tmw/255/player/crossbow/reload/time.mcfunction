#
    execute store result score $reloadid ui_temp run data get storage ui:gun temp.ReloadID

# データ取り
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $reloadtime.temp ui_temp = $reloadtime ui_temp
    scoreboard players operation $reloadtime.temp ui_temp -= $time ui_temp

#
    execute if score $reloadid ui_temp matches 1 if score $reloadtime.temp ui_temp matches 25 at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1.4 0
    execute if score $reloadid ui_temp matches 1 if score $reloadtime.temp ui_temp matches 6..24 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 1.2 0
    execute if score $reloadid ui_temp matches 1 if score $reloadtime.temp ui_temp matches 5 at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 1.4 0

#
    execute if score $reloadid ui_temp matches 2 if score $reloadtime.temp ui_temp matches 15 at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1.4 0
    execute if score $reloadid ui_temp matches 2 if score $reloadtime.temp ui_temp matches 6..14 at @s run playsound block.note_block.hat player @a ~ ~ ~ 1 1.2 0
    execute if score $reloadid ui_temp matches 2 if score $reloadtime.temp ui_temp matches 5 at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 1.4 0

# アサルトライフル FIRE_IGNITE-1-1-4,DOOR_OPEN-1-2-6,FIRE_IGNITE-1-1-2,HURT_FLESH-1-0-3,DOOR_CLOSE-1-2-4
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 36 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 30 at @s run playsound block.wooden_door.open player @a ~ ~ ~ 1 2 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 28 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 25 at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 0.5 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 21 at @s run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 3 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0
    execute if score $reloadid ui_temp matches 3 if score $reloadtime.temp ui_temp matches 0 at @s run playsound block.piston.extend player @a ~ ~ ~ 1 2 0

# 書き込み
    #tellraw @a {"score":{"name":"$reloadtime.temp","objective":"ui_temp"}}
    execute if score $reloadtime.temp ui_temp matches ..-1 store success score $changed ui_temp run scoreboard players set $reloadtime ui_temp 0
    #execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 0.5 2 0