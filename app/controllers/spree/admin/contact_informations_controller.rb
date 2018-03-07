module Spree
  module Admin
    class ContactInformationsController < ResourceController
      
      def edit; end

      def update
        @contact_information = Spree::ContactInformation.find(params[:id])

        if @contact_information.update(contact_information_params)
          flash[:success] = "Informasi kontak berhasil diperbarui"
          redirect_to edit_contact_information_url
        end
      end

      private
        def contact_information_params
            params.require(:contact_information).permit(:address, :phone)
        end
    end
  end
end
