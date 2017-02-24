class User < ActiveRecord::Base
	has_many :movie, dependent: :destroy

	has_secure_password

	validates :name, :presence=>true

	validates :email, :presence => true,
					  :uniqueness=>true,
					  :format=>{:with=>/\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}

	#validates :password, :presence =>true,
	#		  			 :length=>{:minimum=>6, :maximum=>20},
	#		  			 :confirmation=>true

	#validates_presence_of :password_confirmation, if: :password_changed?

end
