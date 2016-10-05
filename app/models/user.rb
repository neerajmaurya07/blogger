class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles    
 
  after_create :send_email
  
  private
  	def send_email
  		UserMailer.signup_confirmation(self).deliver	
  	end
    
   
end
