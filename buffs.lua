--vamos adicionar os buffs
player = require("player")
buffs = {

    HealthIncrease = {
        type = "buff"
    },
    SpeedIncrease = {
        type = "buff",
        activated = false,
        effect = function (player) player.actual_speed = player.actual_speed * 100    end
    },

    BaseDamageIncrease = {
        type = "buff"
    },

    SuperBaseDamageIncrease = {
        type = "buff"
    },

    SuperHealthIncrease = {
        type = "buff"
    },

    SuperSpeedIncrease = {
        type = "buff"
    }



}

function AddBuff(player,buff)
    
end

function RemoveBuff(player,buff)
    
end

return buffs