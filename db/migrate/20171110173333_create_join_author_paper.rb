class CreateJoinAuthorPaper < ActiveRecord::Migration
  def change
    create_table :join_author_papers do |t|
      t.string :authors
      t.string :papers
    end
  end
end
