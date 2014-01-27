class Client < ActiveRecord::Base

	acts_as_paranoid

	has_many :projects, dependent: :destroy

end
