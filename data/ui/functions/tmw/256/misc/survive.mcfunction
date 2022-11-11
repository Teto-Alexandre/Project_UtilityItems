# サヴァイブ発動時に無敵じゃないか調べる
    execute store result score $resistance ui_temp run data get entity @s ActiveEffects.[{Id:11}].Amplifier
    execute if score $resistance ui_temp matches ..4 run function ui:tmw/256/misc/survive.checked