class AddArticleToComment < ActiveRecord::Migration[6.1]
	def change
		add_reference :comments, :article, index: true
	end
end
