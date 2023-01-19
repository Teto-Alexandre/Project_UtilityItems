data merge storage tds: {temp:{Amount:20.0f,DisableParticle:false}}
function tds:heal
playsound block.amethyst_block.chime player @s ~ ~ ~ 1 1.2
particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 5 normal
particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 5 normal
effect give @s resistance 30 0 false
effect give @s regeneration 30 0 false