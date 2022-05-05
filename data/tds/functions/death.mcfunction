gamerule showDeathMessages false
function tds:deathtime
kill @s
gamerule showDeathMessages true

#復活直後にHP回復（死にかけでリスポーンするバグ対策）
effect give @s instant_health 1 10 true