class NewProductCreated < ActionMailer::Base
 default from: "nithyapreethi2210@gmail.com"
 
  def new_product_created(product)
    @product = product
    mail :to =>'nithyaah@railsfactory.org', :subject => 'New product Created'
  end
end
