data merge storage ui:object_maker {temp:{DisplayName:'{"text":"バルカンタレット","color":"white"}',NoShot:0,Mass:2,Speed:1000,AirRes:1,Gravity:0,Pack:1,Spread:100,DamageType:4,WeakMultiplier:100,BackMultiplier:100,FlyParticle:-15,EndParticle:-1,FlyModifiers:[],Sound:1,Muzzle:42,Range:10}}
data modify storage ui:object_maker temp.UUID set from entity @e[tag=ui_temp_obj,tag=tmw_270_hitbox,limit=1] UUID
function ui:tmw/255/player/crossbow/attack/shot/common
