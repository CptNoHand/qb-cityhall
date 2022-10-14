Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-543.98, -197.12, 38.23),
        showBlip = false,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "Bürgeramt"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 250,
            },
            ["driver_license"] = {
                label = "Driver License",
                cost = 250,
                metadata = "driver"
            },
            ["weaponlicense"] = {
                label = "Weapon License",
                cost = 10000,
                metadata = "weapon"
            },
            ['permit'] = {
                label = "Permit",
                cost = 100,
                metadata = 'permit'
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Driving School"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-543.06, -195.89, 37.73, 83.22),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
