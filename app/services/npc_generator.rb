class NPCGenerator
  EYE_OPTIONS = %w[Sleepy Shifty Watery Bright Cold Smiling Close-set Wild Distant Lazy Piercing Watchful Dark Hooded Eyes-of-two-different-colors Slightly-crossed Wide Beautiful Beady Penetrating]
  EAR_OPTIONS = %w[Over-sized Long-ear-lobes Small Uneven Hairy Pointy Short-ear-lobes ears-that-stick-out Jug-handle Elaborately-pierced Cauliflower Ears-with-improbable-tufts-of-hair]
  MOUTH_OPTIONS = %w[Full-lips Buck-teeth Thin-lips Rotting-teeth Crooked-teeth A-broken-or-missing-tooth Pursed-lips Dry-cracked-lips One-or-more-false-teeth A-mouth-that-hangs-open]
  NOSE_OPTIONS = %w[crooked bulbous narrow button long broad angular round broken hawk-like wide delicate]
  CHIN_OPTIONS = %w[pronounced cleft dimple-on-the-chin rounded sharp-jawline square-jaw round-jaw underbite]
  HAIR_OPTIONS = %w[Thick Wispy Straight Wavy Curly Wiry Oily Lush Poofy Long-braids Tight-braids Very-long Greasy Unruly unusual-hairstyle outdated-hairstyle high-maintenance-hairstyle Short-cropped shaved None]
  MISC_OPTIONS = %w[High-cheekbones Tight-drawn-cheeks Chubby-cheeks unpleasant-pustule large-mole beauty-mark Freckles Terrible-scarring]
  def new_npc
    {
      appearance: appearance
    }
  end

  def appearance
    @appearance ||= {
      eyes: eyes,
      ears: ears,
      mouth: mouth,
      nose: nose,
      chin: chin,
      hair: hair,
      misc: misc
    }
  end

  def eyes
    EYE_OPTIONS.sample
  end

  def ears
    EAR_OPTIONS.sample
  end

  def mouth
    MOUTH_OPTIONS.sample
  end

  def nose
    NOSE_OPTIONS.sample
  end

  def chin
    CHIN_OPTIONS.sample
  end

  def hair
    HAIR_OPTIONS.sample
  end

  def misc
    MISC_OPTIONS.sample
  end
end
