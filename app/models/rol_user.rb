class RolUser < ApplicationRecord
  belongs_to :rol
  belongs_to :user
end
