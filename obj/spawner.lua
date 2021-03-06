local Spawner = Entity:extend("Spawner")

function Spawner:init(x, y, r, col, period)
    Spawner.super.init(self, x, y, r, col)
    self.period = period or 120
end

function Spawner:update(dt)
    -- self.debug = "updated at: "..dt
    -- self.debug = love.timer.getTime() - self.timer
    if (timer - self.timer) % self.period == 0 then
        -- insert creep in some way
        Creep:new("BasicCreep", 3, self.x, self.y)
        -- self.debug = ""..dt
    end
end

return Spawner