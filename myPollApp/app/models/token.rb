class Token < ApplicationRecord
  belongs_to :user

  before_create :generate_token

  def is_valid?
    DateTime.now < self.expires_at
  end


  private
  # This is rails method to genrate random tokens
  def generate_token
  	# Ciclo do while in rails
  		begin
  		  self.token = SecureRandom.hex
  		end while Token.where(token: self.token).any?
  		#expires for 1 montn 'from_now is a helper of rails'
  		self.expires_at ||= 1.month.from_now 
  end





end
