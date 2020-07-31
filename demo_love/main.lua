-- this will play a mod file and show some stuff on the consol
-- run with love ./demo_love

local OpenMPT = require "../openmpt"

bitDepth = 16
samplingRate = 44100
channelCount = 1
bufferSize = 2048
pointer = 0
dspTime = 0.0

local mod = OpenMPT:new("./plainsong.xm")

function love.load()
    sd = love.sound.newSoundData(bufferSize, samplingRate, bitDepth, channelCount)
    qs = love.audio.newQueueableSource(samplingRate, bitDepth, channelCount)
end

function love.update(dt)
     if qs:getFreeBufferCount() == 0 then return end
     local samplesToMix = bufferSize
     for smp = 0, samplesToMix-1 do
         mod:read_mono(samplingRate, smp, sd:getFFIPointer())

         pointer = pointer + 1
         dspTime = dspTime + (1 / samplingRate)
         if pointer >= sd:getSampleCount() then
            mod:set_position_seconds(dspTime)
             pointer = 0
             qs:queue(sd)
             qs:play()
         end
     end
end