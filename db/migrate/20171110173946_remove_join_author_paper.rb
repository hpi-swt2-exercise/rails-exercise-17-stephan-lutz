class RemoveJoinAuthorPaper < ActiveRecord::Migration
  def change
    drop_table :join_author_papers
  end
end
