module Book
  class Data < Grape::API

    resource :book_data do
	    desc "List all Books"

	    get do
	      BookData.all
	    end

	    desc "create a new book"

		params do
		  requires :name, type: String
		  requires :author, type:String
		  requires :year, type:Integer
		end

		post do
		  BookData.create!({
		    name:params[:name],
		    author:params[:author],
		    year:params[:year]
		  })
		end

		desc "delete a book"
		 params do
		   requires :id, type: String
		 end
		 delete ':id' do
		   BookData.find(params[:id]).destroy!
		 end

		desc "update a book author"
		params do
		  requires :id, type: String
		  requires :author, type:String
		end
		put ':id' do
		  BookData.find(params[:id]).update({
		    author:params[:author]
		  })
		end
    end
  end
end