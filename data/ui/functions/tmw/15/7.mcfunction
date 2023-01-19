#
    #effect give @s instant_health 1 0 true
    data merge storage tds: {temp:{Amount:4.00f,DisableParticle:false}}
    function tds:heal

#
    particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.05 10 normal
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.8 1.6 0

# 発動成功
    scoreboard players set $success ui_temp 1