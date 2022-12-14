class OrderMailer < ApplicationMailer
  default from: 'Vasyl Petryna <ruby@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Books Online Store Shipped'
  end

  def received(order)
    @order = order
    mail to: order.email, subject: 'Books Online Store Confirmation'
  end
end
