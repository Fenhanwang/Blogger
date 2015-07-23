class AuthorSessionsController < ApplicationController
	def new
		respond_to do |format|
			# format.html { redirect_to(person_list_url) }
			format.js
			# format.xml  { render xml: @person.to_xml(include: @company) }
		end
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
