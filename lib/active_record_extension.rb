module ActiveRecordExtension

  extend ActiveSupport::Concern
  extend ActiveModel::Naming
  
  def model_name
    self.class.model_name
  end
  
  def form_header_text
    (((persisted?) ? "New " : "Update ") + model_name.human).split.map(&:capitalize)*' '
  end
  
  def button_text
    (persisted?) ? "Create" : "Update"
  end
  
  module ClassMethods
    def generate_unique_token_for_field(field)
      begin
        token = SecureRandom.urlsafe_base64(16)
      end until !self.exists?(field => token)

      token
    end
    
    def all_display
        self.where(display: true).order(:position).all
    end
  end
end

# ActiveRecord::Base.send(:include, ActiveModel::Naming)
ActiveRecord::Base.send(:include, ActiveRecordExtension)