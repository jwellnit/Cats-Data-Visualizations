class District < ApplicationRecord
  self.table_name = "district"
  self.primary_keys = [:nces_lea_id, :state_lea_id]
end
