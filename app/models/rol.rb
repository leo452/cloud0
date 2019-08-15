class Rol < ActiveRecord::Base
    belongs_to :user
    has_many :rol_permissions
    has_many :permissions, through: :rol_permissions
    validates :name, presence: true ,length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :user_id, presence: true
end

