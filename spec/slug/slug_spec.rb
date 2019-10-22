require_relative '../spec_helper'
require_relative '../../app/slug/slug'

describe Slug do
  describe '#test' do
    it "returns 'test'" do
      expect(Slug.new.test).to eq('test')
    end
  end
end