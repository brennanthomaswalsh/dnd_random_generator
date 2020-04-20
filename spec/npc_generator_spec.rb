require 'rails_helper'

RSpec.describe NPCGenerator do
  context '#new_npc' do
    it 'should return one npc' do
      expect(subject.new_npc).to an_instance_of(Hash)
    end

    it 'should return a hash with appearance' do
      expect(subject.new_npc[:appearance]).not_to be_nil
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
end
