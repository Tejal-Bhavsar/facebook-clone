class JwtBlacklist < ApplicationRecord
    include Devise::JWT::RevocationStrategies

    self.table_name = 'jwt_blacklists'
end
