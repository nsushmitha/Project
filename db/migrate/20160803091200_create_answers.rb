class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
    	t.string :ans
		t.belongs_to :question, index: true
        t.timestamps
      t.timestamps
    end
  end
end
