#=======================================================================================================

scoreboard players operation @s ui_hp_calc -= @s ui_hp
scoreboard players remove @s[nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:-5}}}]},scores={ui_hp_calc=..-1}] ui_hp 1
scoreboard players operation @s ui_hp_calc = @s ui_hp

execute as @s[scores={ui_hp=0..}] run attribute @s generic.max_health modifier remove 0-0-0-0-0

execute as @s[scores={ui_hp=1}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.05 multiply_base
execute as @s[scores={ui_hp=2}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.10 multiply_base
execute as @s[scores={ui_hp=3}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.15 multiply_base
execute as @s[scores={ui_hp=4}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.20 multiply_base
execute as @s[scores={ui_hp=5}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.25 multiply_base
execute as @s[scores={ui_hp=6}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.30 multiply_base
execute as @s[scores={ui_hp=7}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.35 multiply_base
execute as @s[scores={ui_hp=8}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.40 multiply_base
execute as @s[scores={ui_hp=9}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.45 multiply_base
execute as @s[scores={ui_hp=10}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.50 multiply_base
execute as @s[scores={ui_hp=11}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.55 multiply_base
execute as @s[scores={ui_hp=12}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.60 multiply_base
execute as @s[scores={ui_hp=13}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.65 multiply_base
execute as @s[scores={ui_hp=14}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.70 multiply_base
execute as @s[scores={ui_hp=15}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.75 multiply_base
execute as @s[scores={ui_hp=16}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.80 multiply_base
execute as @s[scores={ui_hp=17}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.85 multiply_base
execute as @s[scores={ui_hp=18}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.90 multiply_base
execute as @s[scores={ui_hp=19}] run attribute @s generic.max_health modifier add 0-0-0-0-0 "ui_curse" -0.95 multiply_base

scoreboard players set @s[scores={ui_hp=..-1}] ui_hp 0

execute as @s[type=player,tag=ui_hpC] run gamerule showDeathMessages true
tag @s[type=player,tag=ui_hpC] remove ui_hpC
tag @s[scores={ui_hp=20..}] add ui_hpC
execute as @s[type=player,tag=ui_hpC] run gamerule showDeathMessages false
execute as @s[type=player,tag=ui_hpC,scores={ui_hp=20..}] run tellraw @a ["",{"selector":"@s"},{"text":" は魂が砕けて消滅した"}]
scoreboard players set @s[type=player,tag=ui_hpC] ui_hp 0
kill @s[tag=ui_hpC]

#=======================================================================================================
