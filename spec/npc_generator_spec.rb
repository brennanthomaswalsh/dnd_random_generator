# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NPCGenerator do
  context '#new_npc' do
    it 'should return one npc' do
      expect(subject.new_npc).to an_instance_of(Hash)
    end

    it 'should return a hash with appearance' do
      expect(subject.new_npc[:appearance]).not_to be_nil
    end

    it 'should return a hash with accessories' do
      expect(subject.new_npc[:accessories]).not_to be_nil
    end

    it 'should return a hash with attitude' do
      expect(subject.new_npc[:attitude]).not_to be_nil
    end

    it 'should return a hash with beliefs' do
      expect(subject.new_npc[:beliefs]).not_to be_nil
    end
  end

  context '#beliefs' do
    it 'should return faiths' do
      expect(subject.beliefs[:faith]).not_to be_nil
    end

    it 'should return prejudices' do
      expect(subject.beliefs[:prejudice]).not_to be_nil
    end

    it 'should return flaws' do
      expect(subject.beliefs[:flaws]).not_to be_nil
    end
  end

  context '#appearance' do
    it 'should return a description of eyes' do
      expect(subject.appearance[:eyes]).not_to be_nil
    end
  end

  context '#eyes' do
    it 'should return a randomized description of eyes' do
      expect(NPCGenerator::EYE_OPTIONS).to include(subject.eyes)
    end
  end

  context '#ears' do
    it 'should return a randomized description of ears' do
      expect(NPCGenerator::EAR_OPTIONS).to include(subject.ears)
    end
  end

  context '#Mouth' do
    it 'should return a randomized description of Mouth' do
      expect(NPCGenerator::MOUTH_OPTIONS).to include(subject.mouth)
    end
  end

  context '#nose' do
    it 'should return a randomized description of nose' do
      expect(NPCGenerator::NOSE_OPTIONS).to include(subject.nose)
    end
  end

  context '#chin' do
    it 'should return a randomized description of chin' do
      expect(NPCGenerator::CHIN_OPTIONS).to include(subject.chin)
    end
  end

  context '#hair' do
    it 'should return a randomized description of hair' do
      expect(NPCGenerator::HAIR_OPTIONS).to include(subject.hair)
    end
  end

  context '#misc' do
    it 'should return a randomized description of misc' do
      expect(NPCGenerator::MISC_OPTIONS).to include(subject.misc)
    end
  end

  context '#height' do
    it 'should return a randomized description of height' do
      expect(NPCGenerator::HEIGHT_OPTIONS).to include(subject.height)
    end
  end

  context '#body' do
    it 'should return a randomized description of body' do
      expect(NPCGenerator::BODY_OPTIONS).to include(subject.body)
    end
  end

  context '#hands' do
    it 'should return a randomized description of hands' do
      expect(NPCGenerator::HAND_OPTIONS).to include(subject.hands)
    end
  end

  context '#scar' do
    it 'should return a randomized description of scar' do
      expect(NPCGenerator::SCAR_OPTIONS).to include(subject.scar)
    end
  end

  context '#tattoo' do
    it 'should return a randomized description of tattoo' do
      expect(NPCGenerator::TATTOO_OPTIONS).to include(subject.tattoo)
    end
  end

  context '#jewelry' do
    it 'should return a randomized description of jewelry' do
      expect(NPCGenerator::JEWELRY_STYLE_OPTIONS).to include(subject.jewelry[:style])
      expect(NPCGenerator::JEWELRY_TYPE_OPTIONS).to include(subject.jewelry[:type])
    end
  end

  context '#clothes' do
    it 'should return a randomized description of clothes' do
      expect(NPCGenerator::CLOTHES_OPTIONS).to include(subject.clothes)
    end
  end

  context '#when_calm_trait' do
    it 'should return a randomized description of when_calm_trait' do
      expect(NPCGenerator::WHEN_CALM_TRAIT_OPTIONS).to include(subject.when_calm_trait)
    end
  end

  context '#when_stressed_trait' do
    it 'should return a randomized description of when_stressed_trait' do
      expect(NPCGenerator::WHEN_STRESSED_TRAIT_OPTIONS).to include(subject.when_stressed_trait)
    end
  end

  context '#starting_mood' do
    it 'should return a randomized description of starting_mood' do
      expect(NPCGenerator::STARTING_MOOD_OPTIONS).to include(subject.starting_mood)
    end
  end

  context '#faith' do
    it 'should return a randomized description of faith' do
      expect(NPCGenerator::FAITH_OPTIONS).to include(subject.faith)
    end
  end

  context '#flaws' do
    it 'should return a randomized description of flaws' do
      expect(NPCGenerator::FLAW_OPTIONS).to include(subject.flaws)
    end
  end

  context '#prejudice' do
    context 'when age-group' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('age-group')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::AGE_GROUP_OPTIONS).to include(subject.prejudice)
      end
    end

    context 'when social-class' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('social-class')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::SOCIAL_CLASS_OPTIONS).to include(subject.prejudice)
      end
    end

    context 'when Social-deviants' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('Social-deviants')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::SOCIAL_DEVIANT_OPTIONS).to include(subject.prejudice)
      end
    end

    context 'when profession' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('profession')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::PROFESSION_OPTIONS).to include(subject.prejudice)
      end
    end

    context 'when race' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('race')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::RACE_OPTIONS).to include(subject.prejudice)
      end
    end

    context 'when Other-genders' do
      before(:each) do
        allow(NPCGenerator::PREJUDICE_OPTIONS).to receive(:sample).and_return('Other-genders')
      end

      it 'should return an age group option' do
        expect(NPCGenerator::PREJUDICE_OPTIONS).to include(subject.prejudice)
      end
    end
  end
end
