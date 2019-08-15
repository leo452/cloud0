class Permission < ActiveRecord::Base
    
    has_many :rol_permissions
    has_many :rols, through: :rol_permissions
    
    validates :name, presence: true, length: {minimum:3, maximum:25 }
    validates_uniqueness_of :name
    
    
    
end