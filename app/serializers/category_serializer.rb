class CategorySerializer < ActiveModel::Serializer
  
  	attributes :id, :name, :sub_categories
    
   
    def sub_categories
        object.sub_categories
    end  





end