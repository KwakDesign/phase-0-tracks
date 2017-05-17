attack_bot = {
  head: {
    main_brain: {
      left_brain: 'super logic chip',
      right_brain: 'super creative chip'
    },
    left_eye: 'laser beam',
    right_eye: 'eye ball missle',
    nose: 'steel nose',
    mouth: ['metal teeth', 'spiked tongue'],
  },
  body: {
    heart_type: 'nuclear',
    stomach: {
      large_intestine: 'gas',
      small_intestine: 'oil'
    },
  },
  left_arm: {
    shoulder: 'rocket launcher',
    elbow: 'spike launcher',
    hand: {
      fingers: ['thumb', 'index', 'middle', 'ring', 'pinky']
    }
  },
  right_arm: {
    shoulder: 'rocket launcher',
    elbow: 'spike launcher',
    hand: {
      fingers: ['thumb', 'index', 'middle', 'ring', 'pinky']
    }
  },
  left_leg: {
    knee: 'grenade launcher',
    foot: ['big toe', 'long toe', 'middle toe', 'ring toe', 'little toe']
  },
  right_leg: {
    knee: 'grenade launcher',
    foot: ['big toe', 'long toe', 'middle toe', 'ring toe', 'little toe']
  },
  skin: 'platinum'
}

attack_bot[:head][:main_brain][:left_brain]
attack_bot[:head][:main_brain][:right_brain] = 'ultra creative chip'
attack_bot[:head][:mouth][0]
attack_bot[:body][:stomach][:large_intestine]
attack_bot[:left_arm][:hand][:fingers].unshift('sixth finger')
attack_bot[:right_arm][:shoulder] = 'machine gun'
attack_bot[:left_leg][:knee]
attack_bot[:right_leg][:foot][0] = 'metal big toe'
attack_bot[:skin] = 'gold'