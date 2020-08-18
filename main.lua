-- this will play a mod file
-- run with love ./demo_love

local OpenMPT = require "openmpt"

local bitDepth = 16
local samplingRate = 44100
local channelCount = 2
local bufferSize = 1024
local pointer = 0
local modChannelCount = 0
local modInstCount = 0
local modLength = 0
local modPosition = 0
local modTitle = ""
local modArtist = ""

local mod

function love.load()
  mod = OpenMPT:new("strobe_-_android_assembled.xm")
  modChannelCount = mod:get_num_channels()
  modInstCount = mod:get_num_instruments()
  modLength = mod:get_duration_seconds()
  modTitle = mod:get_metadata("title")
  if modTitle == "" then modTitle = "Untitled" end
  modArtist = mod:get_metadata("artist")
  if modArtist == "" then modArtist = "Unknown" end
  love.window.setTitle(modTitle)
  love.window.setMode(20 + (modChannelCount*30), 325)
  
  -- setup your audio buffer
  sd = love.sound.newSoundData(bufferSize, samplingRate, bitDepth, channelCount)
  qs = love.audio.newQueueableSource(samplingRate, bitDepth, channelCount)
end

function love.update(dt)
  -- pump audio from mod into buffer
  if qs:getFreeBufferCount() == 0 then return end
  mod:read_interleaved_stereo(samplingRate, bufferSize, sd:getFFIPointer())
  qs:queue(sd)
  qs:play()
  
  -- loop song
  if mod:get_position_seconds() >= modLength then
    mod:set_position_seconds(0)
  end
end

function love.draw()
  love.graphics.print( modTitle .. " by " .. modArtist, 10,10 )
  -- bpm isn't working on linux
  -- love.graphics.print( "Current BPM: " .. mod:get_current_estimated_bpm(), 10,25 )
  love.graphics.print( "Speed: " .. mod:get_current_speed(), 10,40 )
  love.graphics.print( "Tempo: " .. mod:get_current_tempo(), 10,55 )
  love.graphics.print( "Current Pattern: " .. mod:get_current_pattern(), 10,70 )
  love.graphics.print( "Channels: " .. modChannelCount, 10,85 )
  love.graphics.print( "Instruments: " .. modInstCount, 10,100 )
  love.graphics.print( "Position (s): " .. modPosition .. " / " .. modLength, 10,115 )

  for channel=0,(modChannelCount - 1) do
    local vu = mod:get_current_channel_vu_mono(channel)
    love.graphics.rectangle("fill", 10 + (channel*30), 300, 20, -100 * vu )
    love.graphics.print( string.format(" %02d", channel+1), 10 + (channel*30), 300 )
  end
end
