class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
		t.string :title
		t.string :ques
		t.belongs_to :person, index: true 
        t.timestamps
    end
  end
end
