class Project < ActiveRecord::Base

	belongs_to :client

	validates :name, presence: true
	validates_format_of :url, with: URI.regexp, allow_blank: true

end
