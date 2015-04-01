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
            user = User.find(@object.user_id)
            message = Message.create( {:sender_id => 0, :payload => @object.id, :subject => 'Question Approved', :body => 'Question: ' + @object.title, :sender_name => 'System Message', :recipient_name => user.name, :recipient_id => user.id } )
            message.save
            flash[:notice] = 'User notified of question approval'
            redirect_to back_or_index
          end
        end

      end
    end
  end
end