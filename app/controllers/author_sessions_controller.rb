class AuthorSessionsController < ApplicationController
	def new
		
	end

	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(articles_path, notice:'Logged in Successfully.')
			flash[:classparams] = "success"
		else
			flash.alert = 'Login failed'
			flash[:classparams] = "danger"
			# render action: :new
			redirect_to :back
		end
	end

	def destroy
		logout
		redirect_to(:authors, notice: 'Logged out!')
		flash[:classparams] = "danger"
	end
	
end
