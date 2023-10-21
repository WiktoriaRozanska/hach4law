class RemoveUnusedColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports, :frequency_ciphertext
    remove_column :reports, :person_reported_ciphertext
    rename_column :reports, :source_of_true_ciphertext, :source_of_truth_ciphertext
  end
end
