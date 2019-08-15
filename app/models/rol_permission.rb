class RolPermission < ActiveRecord::Base
belongs_to :rol
belongs_to :permission
end