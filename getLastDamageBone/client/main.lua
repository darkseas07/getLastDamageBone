local bones = {
    [0] = "Root",
    [31086] = "Head",
    [39317] = "Neck",
    [24816] = "Stomach-1",
    [24817] = "Stomach-2",
    [24818] = "Stomach-3",
    [64729] = "Clavicle",
    [57597] = "Spine Root",
    [58271] = "Thigh",
    [45509] = "UpperArm",
    [61163] = "ForeArm",
    [57005] = "Right Hand",
    [18905] = "Left Hand",
    [36864] = "Right Calf",
    [63931] = "Left Calf",
    [52301] = "Right Foot Back",
    [14201] = "Left Foot Back",
    [24806] = "Right Foot Front",
    [57717] = "Left Foot Front"
}

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local _, boneIndex = GetPedLastDamageBone(ped)
        if boneIndex and bones[boneIndex] and bones[boneIndex] ~= nil then
            local bonePos = GetPedBoneCoords(ped, boneIndex)
            print("Bone: "..bones[boneIndex].." coords: "..bonePos.x.." "..bonePos.y.." "..bonePos.z)
        end
    end
end)