# frozen_string_literal: true

class NPCGenerator
  EYE_OPTIONS = %w[Sleepy Shifty Watery Bright Cold Smiling Close-set Wild Distant Lazy Piercing Watchful Dark Hooded Eyes-of-two-different-colors Slightly-crossed Wide Beautiful Beady Penetrating].freeze
  EAR_OPTIONS = %w[Over-sized Long-ear-lobes Small Uneven Hairy Pointy Short-ear-lobes ears-that-stick-out Jug-handle Elaborately-pierced Cauliflower Ears-with-improbable-tufts-of-hair].freeze
  MOUTH_OPTIONS = %w[Full-lips Buck-teeth Thin-lips Rotting-teeth Crooked-teeth A-broken-or-missing-tooth Pursed-lips Dry-cracked-lips One-or-more-false-teeth A-mouth-that-hangs-open].freeze
  NOSE_OPTIONS = %w[crooked bulbous narrow button long broad angular round broken hawk-like wide delicate].freeze
  CHIN_OPTIONS = %w[pronounced cleft dimple-on-the-chin rounded sharp-jawline square-jaw round-jaw underbite].freeze
  HAIR_OPTIONS = %w[Thick Wispy Straight Wavy Curly Wiry Oily Lush Poofy Long-braids Tight-braids Very-long Greasy Unruly unusual-hairstyle outdated-hairstyle high-maintenance-hairstyle Short-cropped shaved None].freeze
  MISC_OPTIONS = %w[High-cheekbones Tight-drawn-cheeks Chubby-cheeks unpleasant-pustule large-mole beauty-mark Freckles Terrible-scarring].freeze
  HEIGHT_OPTIONS = %w[Unusually-short Short-in-stature Average-height Slightly-above-average-height Well-above-average-height Unusually-tall].freeze
  BODY_OPTIONS = %w[Thin-and-delicate Of-average-build Well-muscled Slightly-overweight Grotesquely-obese Lean-and-lanky Lithe-and-lean Thin-and-wiry Sinewy-and-strong Flabby-and-weak Lumpy-or-bent Thin-and-flimsy Soft-and-chubby Thin-and-petite Pudgy Big-and-broad Stocky-and-strong Bony Wide-and-ponderous Covered-in-hair].freeze
  HAND_OPTIONS = %w[Powerful Delicate Rough Soft A-light-touch A-heavy-touch].freeze
  SCAR_OPTIONS = %w[jagged dark-purple angry-red long-thin None].freeze
  TATTOO_OPTIONS = %w[dagger arrow anchor skull pair-of-crossed-bones snake scorpion spider-web heart ring-of-thorns mermaid dragon none].freeze
  JEWELRY_TYPE_OPTIONS = %w[An-earring Two-earrings small-chain-about-the-neck large-chain-about-the-neck tight-choker-about-the-neck brooch ring Several-rings bracelet nose-ring medallion ornate-belt].freeze
  JEWELRY_STYLE_OPTIONS = %w[Steel Bronze Pewter Silver Gold Platinum Copper Gemstone].freeze
  CLOTHES_OPTIONS = %w[Crisp-and-new Fashionable-and-hip bit-old-fashioned Of-the-highest-quality Faded-but-in-good-condition Faded-and-patched Torn-in-places/missing-buttons Tattered-and-worn].freeze
  WHEN_CALM_TRAIT_OPTIONS = %w[Compassionate Cheerful Reserved Outspoken Uninterested Gruff Eager Deceitful Foolish Strict Agreeable Mischeivious Angry Fearful Manipulative Devout Greedy Funny Dour Fun-Loving Lazy Driven Boastful Artistic Assertive Carefree Cautious Confident Thoughtful Loyal Sophisticated Weak-Willed].freeze
  WHEN_STRESSED_TRAIT_OPTIONS = %w[Withdrawn Murderous Obsessive Authoritarian Determined Brave Spiteful Belligerent Caustic Reckless Argumentative Gluttonous Overly Protective Angry Cowardly Meticulous Sarcastic Stubborn Destructive Practical Pushy Fanatical Secretive Scornful Courageous Impractical Calculating Industrious Manipulative Destructive Compulsive Intolerant].freeze
  STARTING_MOOD_OPTIONS = %w[Agreeable Carefree Curious Eager Friendly Happy Hopeful Upbeat Indifferent Bored Focused Suspicious Tired Withdrawn Disagreeable Agitated Angry Despondent Gloomy Nervous].freeze
  FAITH_OPTIONS = %w[Quiet-true-believer Casual-observer Critical-student Outspoken-cynic Open-minded-seeker Broken-heretic Cautious-listener Fanatical-true-believer].freeze
  PREJUDICE_OPTIONS = %w[Other-genders age-group social-class Social-deviants profession race].freeze
  AGE_GROUP_OPTIONS = %w[children teenagers elderly].freeze
  SOCIAL_CLASS_OPTIONS = %w[ruling-class-and-authority-figures powerful-rich destitute-poor].freeze
  SOCIAL_DEVIANT_OPTIONS = %w[beggars drunks drug-users].freeze
  PROFESSION_OPTIONS = %w[farmers artists clergy soldiers fishers harlots miners merchants scholars herders sailors mages].freeze
  RACE_OPTIONS = %w[dwarves elves gnomes goblins half-breeds halflings humans orcs reptilians].freeze
  FLAW_OPTIONS = %w[Fidgets Drinks-too-much Eats-too-much Swears-often Has-poor-hygiene Can’t-resist-flirting Can’t-stop-staring Sweats-profusely-and-easily Is-a-habitual-liar Embellishes-the-truth Exaggerates-details Has-a-short-temper Is-melodramatic Gossips Chews-with-an-open-mouth Often-sniffs-audibly Believes-what-you-tell-him/her Is-skeptical-of-everything Paces Makes-poor-eye-contact].freeze
  GEMSTONE_OPTIONS = %w[amethyst crystal diamond emerald jade obsidian opal pearl ruby sapphire topaz turquoise].freeze

  def new_npc
    {
      appearance: appearance,
      accessories: accessories,
      attitude: attitude,
      beliefs: beliefs
    }
  end

  def beliefs
    @beliefs ||= {
      faith: faith,
      prejudice: prejudice,
      flaws: flaws
    }
  end

  def flaws
    FLAW_OPTIONS.sample
  end

  def prejudice
    prej = PREJUDICE_OPTIONS.sample
    case prej
    when 'age-group'
      AGE_GROUP_OPTIONS.sample
    when 'social-class'
      SOCIAL_CLASS_OPTIONS.sample
    when 'Social-deviants'
      SOCIAL_DEVIANT_OPTIONS.sample
    when 'profession'
      PROFESSION_OPTIONS.sample
    when 'race'
      RACE_OPTIONS.sample
    else
      prej
    end
  end

  def attitude
    @attitude ||= {
      when_calm_trait: when_calm_trait,
      when_stressed_trait: when_stressed_trait,
      starting_mood: starting_mood
    }
  end

  def accessories
    @accessories ||= {
      tattoo: tattoo,
      jewelry: jewelry,
      clothes: clothes
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
      misc: misc,
      height: height,
      body: body,
      hands: hands,
      scar: scar
    }
  end

  def faith
    FAITH_OPTIONS.sample
  end

  def starting_mood
    STARTING_MOOD_OPTIONS.sample
  end

  def when_calm_trait
    WHEN_CALM_TRAIT_OPTIONS.sample
  end

  def when_stressed_trait
    WHEN_STRESSED_TRAIT_OPTIONS.sample
  end

  def clothes
    CLOTHES_OPTIONS.sample
  end

  def jewelry
    {
      type: JEWELRY_TYPE_OPTIONS.sample,
      style: style
    }
  end

  def style
    style = JEWELRY_STYLE_OPTIONS.sample
    case style
    when 'Gemstone'
      GEMSTONE_OPTIONS.sample
    else
      style
    end
  end

  def tattoo
    TATTOO_OPTIONS.sample
  end

  def scar
    SCAR_OPTIONS.sample
  end

  def hands
    HAND_OPTIONS.sample
  end

  def body
    BODY_OPTIONS.sample
  end

  def height
    HEIGHT_OPTIONS.sample
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
