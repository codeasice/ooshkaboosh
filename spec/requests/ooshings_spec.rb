require 'spec_helper'

describe "Ooshings" do
  describe "GET /ooshes" do
    it "Should have Create Oosh on the Oosh page" do
      visit('/ooshes/new')
      page.should have_selector(:link_or_button, 'Create Oosh')
    end
    it "Should not have a keyword field" do
      visit('/ooshes/new')
      expect(page).to have_no_content('Keyword')
    end
    it "Should not have a Extra text field" do
      visit('/ooshes/new')
      expect(page).to have_no_content('Extra')
    end
  end

describe Oosh do

  before do
    @oosh = Oosh.new(full_text: "full text")
  end

  subject { @oosh }
  it { should respond_to(:full_text) }
  it { should be_valid }

  describe "when full_text is not present" do
    before { @oosh.full_text = " " }
    it { should_not be_valid }
  end
  describe "it should not accept empty dates"do
    it { should be_true(false) }
  end
  describe "keyword should be first word of full_text" do
    it { should be_true(false) }
  end
  describe "extra_field should be full_text minus first word" do
    it { should be_true(false) }
  end
 end

end
