class UserMailer < ApplicationMailer

  default from: 'no-reply@jungle.com'

  def receipt_email(order)
    @order = order
    mail(to: @order.email, subject: 'Thank you for shopping! your order number is #{orderid}')
  end
end
