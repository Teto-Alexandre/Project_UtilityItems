tag @e[distance=..1] add hc_deck_temp_temp

$summon $(id) ~ ~ ~ $(tag)

execute as @e[distance=..0.1,tag=!hc_deck_temp_temp] run function ui:tmw/272/effect/effect_type/summon/tag_macro_2

tag @e[tag=hc_deck_temp_temp] remove hc_deck_temp_temp