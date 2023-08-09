#
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 6..100 store result score $firetime ui_temp run time query gametime
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 6..100 run scoreboard players remove $firetime ui_temp 100
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 6..100 run function ui:tmw/255/player/crossbow/fire/template/calc
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 106..200 store result score $firetime ui_temp run time query gametime
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 106..200 run scoreboard players remove $firetime ui_temp 200
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 106..200 run function ui:tmw/255/player/crossbow/fire/template/calc
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 210..300 store result score $firetime ui_temp run time query gametime
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 210..300 run scoreboard players remove $firetime ui_temp 300
execute unless score $customcount ui_temp matches 11 if score $firetime.temp ui_temp matches 210..300 run function ui:tmw/255/player/crossbow/fire/template/calc

#
#execute if score $firetime.temp ui_temp matches 100 if entity @s[scores={ui_st=0}] run say 内部コンボ係数=1
execute if score $firetime.temp ui_temp matches 100 if entity @s[scores={ui_st=0}] run scoreboard players set $customcount ui_temp 1
#execute if score $firetime.temp ui_temp matches 200 if entity @s[scores={ui_st=0}] run say 内部コンボ係数=1
execute if score $firetime.temp ui_temp matches 200 if entity @s[scores={ui_st=0}] run scoreboard players set $customcount ui_temp 1
#execute if score $firetime.temp ui_temp matches 300 if entity @s[scores={ui_st=0}] run say 内部コンボ係数=1
execute if score $firetime.temp ui_temp matches 300 if entity @s[scores={ui_st=0}] run scoreboard players set $customcount ui_temp 1
#execute if score $firetime.temp ui_temp matches 100 if entity @s[predicate=ui:is_sprinting] run say 内部コンボ係数=11
execute if score $firetime.temp ui_temp matches 100 if entity @s[predicate=ui:is_sprinting] run scoreboard players set $customcount ui_temp 11
#execute if score $firetime.temp ui_temp matches 200 if entity @s[predicate=ui:is_sprinting] run say 内部コンボ係数=11
execute if score $firetime.temp ui_temp matches 200 if entity @s[predicate=ui:is_sprinting] run scoreboard players set $customcount ui_temp 11
#execute if entity @s[scores={ui_st=1..}] run say 内部コンボ係数=2
execute if entity @s[scores={ui_st=1..}] run scoreboard players set $customcount ui_temp 2
#execute if score $firetime.temp ui_temp matches 0 if entity @s[scores={ui_st2=20..}] run say 内部コンボ係数=11
execute if score $firetime.temp ui_temp matches 0 if entity @s[scores={ui_st2=20..}] run scoreboard players set $customcount ui_temp 11
#execute if entity @s[nbt={OnGround:0b}] run say 内部コンボ係数=3
#execute if entity @s[nbt={OnGround:0b}] run scoreboard players set $customcount ui_temp 3
