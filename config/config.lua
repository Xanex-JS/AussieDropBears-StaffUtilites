--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

Config = {}

-- Prefix for Staff Yeet
Config.Prefix = '^1[^5Staff Yeet^1] ^3'

-- DefaultPedRestriction roleList for Bypass

roleList = {
    "ARP │ Staff Team", -- Ped Default Bypass DiscordRole
}

-- Restricted Peds Model List

defaultpedmodel = {
    "a_m_y_skater_01",
    "a_m_y_skater_02",
    "a_m_y_hipster_01",
    "a_m_y_hipster_02",
}

-- Chat Filter Configuation

Config.blacklistedwords = { -- Add as many words as your screenfits to block more words.
    'nigga', 
    'nigger', 
    'Nick Hertz',
    'Faggot',
    'faggot'
}

Config.retrun_message = "[^3SYSTEM^0] You cannot say ^1%s^0 in this server!" -- Return message of the chat filter if it gets detected


Config.webhook = "https://discord.com/api/webhooks/984360476743983114/nTdoSKQsWU5aYU-7yDCx8AW6Cvaww3qfk4d493w5oDWXitdUz7SO7FKRwxJtFHVW2u5c11" -- discord webhoook
Config.color = 000000 -- color
Config.avatar_url = "" -- This is the avatar of your discord bot
Config.KickPlayer = true -- true = kick the player for saying a blacklsited word - false doesn't kick them.