for key, Cfg in pairs(Config) do
    if type(Cfg) == "table" and Cfg.NameOfScript and Cfg.EventForStarting and Cfg.EventForStopping then
        AddEventHandler(Cfg.NameOfScript .. ":" .. Cfg.EventForStarting, function(...)
            if Cfg.Debug then
                print(_L('CLIENT_DEBUG_START', Cfg.NameOfScript))
            end
            TriggerServerEvent(Cfg.NameOfScript .. ":enabletemppermissions")
        end)

        AddEventHandler(Cfg.NameOfScript .. ":" .. Cfg.EventForStopping, function(...)
            if Cfg.Debug then
                print(_L('CLIENT_DEBUG_STOP', Cfg.NameOfScript, tostring(Cfg.WaitForStopping or 0)))
            end

            local waitTime = tonumber(Cfg.WaitForStopping) or 0
            if waitTime > 0 then
                Citizen.SetTimeout(waitTime * 1000, function()
                    TriggerServerEvent(Cfg.NameOfScript .. ":disabletemppermissions")
                end)
            else
                TriggerServerEvent(Cfg.NameOfScript .. ":disabletemppermissions")
            end
        end)
    end
end
