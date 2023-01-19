data merge storage tds: {temp:{Amount:10.0f,DisableParticle:false}}
function tds:heal
playsound block.amethyst_block.chime player @s ~ ~ ~ 1 1.2
particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 5 normal
particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 5 normal
effect give @s resistance 5 0 false
effect give @s regeneration 5 0 false