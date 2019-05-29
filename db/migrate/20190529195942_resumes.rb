class Resumes < ActiveRecord::Migration[5.2]
  def change
    drop_table :resumes
  end
end
