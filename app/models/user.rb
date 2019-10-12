# require 'elasticsearch/model'
class User < ActiveRecord::Base
	has_many :images, as: :imageable
	has_one :profile
	after_create :create_user_profile

	def create_user_profile
		p '1111111111111'
		up = build_profile if profile.blank?
		up.save!
	end	
# has_paper_trail

# validates :avatar,
#     attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
#     attachment_size: { less_than: 5.megabytes }

#   has_attached_file :avatar, styles: {
#     thumb: '100x100>',
#     square: '200x200#',
#     medium: '300x300>'
#   }

# include Elasticsearch::Model
#  include Elasticsearch::Model::Callbacks

#  def self.search(query)
#  __elasticsearch__.search(
#   {
#    query: {
#     multi_match: {
#      query: query,
#      fields: ['name^10', body]
#     }
#    }
#   }
#  )
# end


end

# settings index: { number_of_shards: 1 } do
#  mappings dynamic: 'false' do
#   indexes :name, analyzer: 'english'
#  end
# end

# User.import(force: true)