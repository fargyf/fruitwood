# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'user registration' do
  let(:user) { build :user }
  let(:submit) { I18n.t('labels.sign_up') }

  before(:each) { visit '/' }

  scenario 'successfully' do
    fill_in 'user_name', with: user.name
    fill_in 'user_tel', with: user.tel
    fill_in 'user_password', with: user.password
    fill_in 'user_password_confirmation', with: user.password

    click_button submit
    expect(page).to have_content(I18n.t('devise.registrations.signed_up'))
  end
end
