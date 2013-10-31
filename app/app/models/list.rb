class List < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title       :string, :required
    description :text
    expires     :date
    timestamps	
  end
  belongs_to :category
  attr_accessible :title, :description, :expires, :category, :category_id
  has_many :wants
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
