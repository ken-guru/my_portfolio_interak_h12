class Project < ActiveRecord::Base

	acts_as_paranoid

	belongs_to :client

	validates :name, presence: true
	validates_format_of :url, with: URI.regexp, allow_blank: true

end
