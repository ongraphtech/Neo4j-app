require 'spec_helper'

describe "Micropost pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  # before { sign_in user }
  before do   
    sign_in user
  end

  describe "micropost creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a micropost" do
        expect { click_button "Post" }.not_to change(Micropost, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end    
  end

  describe "micropost destruction" do
    let(:user) { User.last }
    before do
      # This code is not idiomatically correct.
      @micropost = Micropost.create(content: "Lorem ipsum")
      @micropost.user = user

    end

    describe "as correct user" do
      before { visit user_path(user) }

      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Micropost, :count).by(-1)
      end
    end
  end

end