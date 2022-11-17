# パーティクルで描画、演出
    # 青色で塗り、ポイントを加算する
    execute at @e[tag=ui_temp_particle] unless block ~ ~ ~ #ui:super_hard unless block ~ ~ ~ #ui:nobreak unless block ~ ~ ~ #ui:liq run fill ~ ~ ~ ~ ~ ~ air destroy

# パーティクルを消去
    kill @e[tag=ui_temp_particle]