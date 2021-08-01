class Zone < ActiveRecord::Base

    validates :name, uniqueness: { scope: [:vaccount_id], message: 'is already present' }
    validates :slug, uniqueness: { scope: [:vaccount_id], message: 'is already present' }

    # before_save :create_slug

    STATE = {active: 1, inactive: 2, deleted: 3}
    enum state: STATE

    def smk
    	selva = 1
    	return selva
    end

    def selva(key)
    	return STATE[key]
    end
end
