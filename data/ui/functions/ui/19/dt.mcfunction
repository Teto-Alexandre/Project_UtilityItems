# ダメージ計測 and 再設置
execute store result score $temp ui_temp run fill ~-27 ~-27 ~-27 ~-9 ~-9 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp = $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-27 ~-27 ~8 ~-9 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-27 ~-27 ~27 ~-9 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~-8 ~-27 ~-9 ~8 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-8 ~-27 ~8 ~8 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-8 ~-27 ~27 ~8 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~9 ~-27 ~-9 ~27 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~9 ~-27 ~8 ~27 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~9 ~-27 ~27 ~27 ~-9 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~-27 ~-8 ~-9 ~-9 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-27 ~-8 ~8 ~-9 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-27 ~-8 ~27 ~-9 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~-8 ~-8 ~-9 ~8 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-8 ~-8 ~27 ~8 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~9 ~-8 ~-9 ~27 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~9 ~-8 ~8 ~27 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~9 ~-8 ~27 ~27 ~8 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~-27 ~9 ~-9 ~-9 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-27 ~9 ~8 ~-9 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-27 ~9 ~27 ~-9 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~-8 ~9 ~-9 ~8 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~-8 ~9 ~8 ~8 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~-8 ~9 ~27 ~8 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-27 ~9 ~9 ~-9 ~27 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-8 ~9 ~9 ~8 ~27 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~9 ~9 ~9 ~27 ~27 ~27 white_stained_glass replace #ui:nocol
scoreboard players operation $total ui_temp += $temp ui_temp
execute if score $total ui_temp matches 1.. run scoreboard players operation @s ui_is += $total ui_temp
execute if score $total ui_temp matches 1.. run scoreboard players add @s ui_is2 1
execute if score $total ui_temp matches 1.. run scoreboard players operation $temp ui_temp = @s ui_is
execute if score $total ui_temp matches 1.. run scoreboard players operation $temp2 ui_temp = @s ui_is2
execute if score $total ui_temp matches 1.. run execute run tellraw @a [{"color":"gray","text":"BreakPower"},{"color":"green","text":"> "},{"score":{"name":"$total","objective":"ui_temp"},"color":"gold"},{"color":"gold","text":" / 161636"},{"color":"gray","text":" ⇒ [ "},{"score":{"name":"$temp","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"blocks , "},{"score":{"name":"$temp2","objective":"ui_temp"},"color":"gold"},{"color":"gray","text":"Combo ]"}]
execute if score $total ui_temp matches 1.. run data merge entity @s {PortalCooldown:200}