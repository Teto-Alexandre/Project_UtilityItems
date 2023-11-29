# 王

# HP5倍
execute store result score $temp ui_temp run data get entity @s active_effects[{id:"minecraft:health_boost"}].amplifier 1
execute if score $temp ui_temp matches ..18 run effect give @s health_boost 100000 19 true