use_bpm 82
use_synth :piano

with_fx :reverb, room: 0.9, mix: 0.6 do
    use_synth :pluck

    3.times do
        play :e3, amp: 0.7
        sleep 0.25

    end
end