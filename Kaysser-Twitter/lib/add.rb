require "yaml/store"

class Add

        def initialize 
            @store = YAML::Store.new("data.yml")
        end
    



    def add_task (new_task)
        @store.transaction do 
        	task_arrayS = []


	        	if @store[:tasks] == nil
	        		@store[:tasks] = []
	        		        	end

	           task_array =  @store[:tasks]
	            
	           task_array.push(new_task)
	           @store[:tasks] = task_array


	       		end
    puts "Task added."    
    end







    # def add_task (new_task)
    #     @store.transaction do 
    #         @store[:tasks] = new_task
            
    #     end
    # puts "Task added."    
    # end

end