require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class ApproveQuestion < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :visible? do
          authorized? && !bindings[:object].approved
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :link_icon do
          'icon-check'
        end

        register_instance_option :controller do
          Proc.new do
            @object.update_attribute(:approved, true)
            flash[:notice] = "You have approved the question titled: #{@object.title}."
            User.where(admin: true).find_each do |user|
              message = Message.create( {:sender_id => 0, :subject => 'Question Approved', :body => 'Question: ' + @object.id.to_s, :sender_name => 'system', :recipient_name => user.name, :recipient_id => user.id } )
              message.save
            end
            flash[:notice] = 'Add user_id to Question. Msg sent to Admin'
            redirect_to back_or_index
          end
        end

      end
    end
  end
end