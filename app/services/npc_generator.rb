class NPCGenerator
  EYE_OPTIONS = %w[Sleepy Shifty Watery Bright Cold Smiling Close-set Wild Distant Lazy Piercing Watchful Dark Hooded Eyes-of-two-different-colors Slightly-crossed Wide Beautiful Beady Penetrating]
  EAR_OPTIONS = %w[Over-sized Long-ear-lobes Small Uneven Hairy Pointy Short-ear-lobes ears-that-stick-out Jug-handle Elaborately-pierced Cauliflower Ears-with-improbable-tufts-of-hair]
  def new_npc
    {
      appearance: appearance
    }
  end

  def appearance
    {
      eyes: eyes,
      ears: ears
    }
  end

  def eyes
    EYE_OPTIONS.sample
  end

  def ears
    EAR_OPTIONS.sample
  end
end
