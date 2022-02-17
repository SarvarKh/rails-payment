class Purchase < ApplicationRecord
	after_create :email_purchaser

	def email_purchaser
		PurchaseMailer.purchase_receipt(self).deliver
	end
end
