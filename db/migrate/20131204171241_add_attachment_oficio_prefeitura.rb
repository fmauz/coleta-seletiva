class AddAttachmentOficioPrefeitura < ActiveRecord::Migration
  def change
    add_attachment :oficio_prefeituras, :archive
  end
end
