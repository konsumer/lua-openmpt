-- this will play a mod file
-- run with love ./demo_love

local OpenMPT = require "../openmpt"

local bitDepth = 16
local samplingRate = 44100
local channelCount = 2
local bufferSize = 1024
local pointer = 0
local currentBpm = 0
local modChannelCount = 0
local modInstCount = 0
local modSpeed = 0
local modTempo = 0
local modLength = 0

local mod

function love.load()
  mod = OpenMPT:new("./plainsong.xm")
  modChannelCount = mod:get_num_channels()
  modInstCount = mod:get_num_instruments()
  modLength = mod:get_duration_seconds()
  sd = love.sound.newSoundData(bufferSize, samplingRate, bitDepth, channelCount)
  qs = love.audio.newQueueableSource(samplingRate, bitDepth, channelCount)
end

function love.update(dt)
  if qs:getFreeBufferCount() == 0 then return end
  local samplesToMix = bufferSize
  mod:read_interleaved_stereo(samplingRate, bufferSize, sd:getFFIPointer())
  currentBpm = mod:get_current_estimated_bpm()
  modSpeed = mod:get_current_speed()
  modTempo = mod:get_current_tempo()
  for smp = 0, samplesToMix-1 do
    pointer = pointer + 1
    if pointer >= sd:getSampleCount() then
      pointer = 0
      qs:queue(sd)
      qs:play()
    end
  end
end

function love.draw()
  love.graphics.print( "Current BPM: " .. currentBpm, 10,10 )
  love.graphics.print( "Speed: " .. modSpeed, 10,25 )
  love.graphics.print( "Tempo: " .. modTempo, 10,40 )
  love.graphics.print( "Channels #: " .. modChannelCount, 10,55 )
  love.graphics.print( "Instruments #: " .. modInstCount, 10,70 )
  love.graphics.print( "Song Length (s): " .. modLength, 10,85 )
end
