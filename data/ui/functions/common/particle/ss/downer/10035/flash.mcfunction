#
data merge storage ui:object_maker {temp:{DisplayName:'{"text":"緑青の束弾","color":"white"}',NoShot:0,Mass:100,Speed:80,AirRes:1,Gravity:0,Pack:1,Spread:0,DamageType:4,WeakMultiplier:100,BackMultiplier:100,FlyParticle:-16,EndParticle:-1,FlyModifiers:[],Sound:12,Muzzle:-1,Range:60}}
function ui:tmw/255/player/crossbow/attack/shot/common

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:9}}
execute positioned ^ ^ ^1 run function ui:common/particle