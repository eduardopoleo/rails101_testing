require_relative '../spec_helper'
require_relative '../../app/slug/slug'

describe Slug do
  describe '#calculate' do
    it "returns 'test'" do
      expect(Slug.new.calculate).to eq('test')
    end
  end
end

# Requirements:
# 1) Single word: 
# 'title' => 'title'

# 2) Single word capitalized: 
# 'Title' => 'title'

# 3) Multiple words separated by ' ' 
# 'a title' => 'a_title'

# 4) Multiple words separated by '.'
# 'A title. Amazing' => 'a_title_amazing'

# 5) Multiple words separated by ':'
# 'A title: Amazing' => 'a_title_amazing'

# 6) Multiple words separated by '-'
# 'a-title' => 'a_title'

# 7) Multiple words capitalized 
# 'A Title' => 'a_title'

# 8) With weird characters:
# 'title@?$%&^*!' => 'title'

# 9) Should not end in a _
# 'title.' => 'title'

# For later when we work in the app
# 10) If repeated should add number at the end
# 'title' => 'title'
# 'title' => 'title_2'
# 'title' => 'title_3' ...
