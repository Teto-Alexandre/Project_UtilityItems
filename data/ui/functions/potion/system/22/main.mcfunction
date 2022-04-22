#=======================================================================================================


execute at @s as @e[type=arrow,limit=1,sort=nearest] store result score $x1 ui_calc1 run data get entity @s Motion[0] 1000000
execute at @s as @e[type=arrow,limit=1,sort=nearest] store result score $y1 ui_calc1 run data get entity @s Motion[1] 1000000
execute at @s as @e[type=arrow,limit=1,sort=nearest] store result score $z1 ui_calc1 run data get entity @s Motion[2] 1000000
execute at @s run kill @e[type=arrow,limit=1,sort=nearest]
execute at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 0.8 0.8 0

function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet
function ui:potion/system/22/bullet


#=======================================================================================================