class Zone < ActiveRecord::Base

    validates :name, uniqueness: { scope: [:vaccount_id], message: 'is already present' }
    validates :slug, uniqueness: { scope: [:vaccount_id], message: 'is already present' }

    before_save :create_slug

    STATE = {active: 1, inactive: 2, deleted: 3}
    enum state: STATE

    def self.basic_attributes
        [:id, :name, :slug, :state]
    end

    def create_slug
        self.slug = self.name.to_s.downcase.gsub(' ','-').gsub('/','-').gsub('--','-') if self.slug.blank?
    end

    def self.all_zones
        Zone.where.not(:name => 'Bangladesh').pluck(:id)
    end

    def self.common_zones
        zones = Zone.where(:name => 'Bangladesh').pluck(:id)
        raise "No Common Zone" if zones.blank?
        zones
    end

    def self.get_allowed_zone_names
        data = {}
        Zone.where(state: "active").where.not(:name => 'Bangladesh').each{|zone|
            data[zone.name.downcase] = {"value" => zone.id, "name" => zone.name, "id" => zone.id, "presentation" => zone.name}
        }
        data
    end

    def self.common_zone_id
        common_zones.first
    end

    def self.get_allowed_zones
        response = {}
        Zone.where(state: "active").where.not(:name => 'Bangladesh').each{|zone|
            response[zone.name] = zone.as_json(:root =>false, :only=> [:id, :name])
        }
    end

end
