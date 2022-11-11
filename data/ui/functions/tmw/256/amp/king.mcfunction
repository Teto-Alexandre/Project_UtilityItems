# 王

# HP5倍
execute store result score $temp ui_temp run data get entity @s ActiveEffects[{Id:21}].Amplifier 1
execute if score $temp ui_temp matches ..18 run effect give @s health_boost 100000 19 true