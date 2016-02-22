require 'rails_helper'

RSpec.describe Challenger, type: :model do
  it { should validate_presence_of(:title)}
  it { should validate_numericality_of(:duration)}
  it { should have_many(:days)}

  it 'should have a slug' do
    challenger =

        (:challenger, title: 'test slug ássent')
    expect(challenger.friendly_id).to eql('test-slug-assent')
  end
end
