# サヴァイブ発動時に無敵じゃないか調べる
    execute store result score $resistance ui_temp run data get entity @s active_effects.[{id:"minecraft:resistance"}].amplifier
    execute if score $resistance ui_temp matches ..4 run function ui:tmw/237/misc/survive.checked