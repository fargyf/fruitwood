# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'user login' do
  let(:user) { create :user }
  let(:submit) { I18n.t('devise.views.sessions.new.submit') }

  before(:each) { visit '/users/sign_in' }

  scenario 'successfully' do
    fill_in 'user_tel', with: user.tel
    fill_in 'user_password', with: user.password

    click_button submit
    expect(page).to have_content(I18n.t('devise.sessions.signed_in'))
  end
end
