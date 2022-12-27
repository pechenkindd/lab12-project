require 'rails_helper'

RSpec.describe "User's authorization", type: :sustem do
	let(:login_value) { Faker::Internet.usernam }
	let(:email_value) { Faker::Internet.email }
	let(:password_value) { Faker::Internet.password(min_length: 8) }

	scenario 'cresting a new user' do
		visit root_path
		visit new_user_path

		fill_in :login, with: login_value
		fill_in :email, with: email_value
		fill_in :password, with: password_value
		fill_in :password_confirmation, with: password_value

		find('#submit-btn').click

		expect(find('#flash-nt')).to have_text("Вы успешно зарегистрировались")
	end


end