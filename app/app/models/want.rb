class Want < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title :string
    url   :string
    image :string
    timestamps
  end
  belongs_to :list
  attr_accessible :title, :url, :image, :list, :list_id

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
