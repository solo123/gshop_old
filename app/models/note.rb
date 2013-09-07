class Note < ActiveRecord::Base
  belongs_to :notes_data, :polymorphic => true
end
