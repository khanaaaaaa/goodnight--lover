use_bpm 82
use_synth :piano

with_fx :reverb, room: 0.8, mix: 0.6 do
    play 63, amp: 0.6
    sleep 0.5
    play 59, amp: 0.5
    sleep 0.4
    play 64, amp: 0.4
    sleep 0.5

    play 63, amp: 0.6
    sleep 0.5
    play 57, amp: 0.7
    sleep 0.1
    play 45, amp: 0.5
    sleep 0.5

    play 43, amp: 0.2
    sleep 0.5
    play 54, amp: 0.5
    sleep 0.5

end

live_loop :background do
    with_fx :reverb, room 0.9, mix 0.6 do
        use_synth :piano

        play 63, amp: 0.7
        sleep 0.25
        play 73, amp: 0.5
        sleep 0.7
        play 63, amp: 0.6
        sleep 0.25
    end
end

in_thread do
    sample "recordings/1stpart.wav"
end