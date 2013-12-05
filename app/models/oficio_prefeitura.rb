class OficioPrefeitura < ActiveRecord::Base
  belongs_to :county

  has_attached_file :archive,
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => "oficios/:id/:filename"

  default_scope -> { joins(:county).order( Arel::Table.new(:counties)[:name] )}

  validates :archive, :attachment_presence => true

  validates :data_registro,
            :name_resp,
            :name,
            :county,
            :presence => true
end
