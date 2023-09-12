#
data merge storage ui:object_maker {temp:{DisplayName:'{"text":"ロジックアトリエ","color":"white"}',NoShot:0,Mass:10,Speed:400,AirRes:1,Gravity:0,Pack:1,Spread:0,DamageType:4,WeakMultiplier:100,BackMultiplier:100,FlyParticle:-17,EndParticle:-1,FlyModifiers:[],Sound:13,Muzzle:-1,Range:60}}
function ui:tmw/255/player/crossbow/attack/shot/common

data merge storage ui:common {input:{Mode:"create",Var:30}}
execute positioned ^ ^ ^0.5 run function ui:common/particle