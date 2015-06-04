class Bill < ActiveRecord::Base
  belongs_to :service
  belongs_to :client
end
