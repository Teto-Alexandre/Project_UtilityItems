#
data merge storage ui:object_maker {temp:{NoShot:0,Mass:5,Speed:50,AirRes:0.95,Gravity:0,Pack:1,Spread:900,DamageType:2,WeakMultiplier:100,BackMultiplier:100,FlyParticle:-5,EndParticle:102,FlyModifiers:[],Sound:-13,Muzzle:71}}
execute rotated ~ -90 run function ui:tmw/255/player/crossbow/attack/shot/common

#
execute if score $is ui_temp matches 100.. run kill @s