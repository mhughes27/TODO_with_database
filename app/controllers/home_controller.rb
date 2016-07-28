MyApp.get "/" do

# basic functions
@tasks = Tasks.new.all
@bob = Tasks.new.bob
@incomplete = Tasks.new.incomplete
@complete = Tasks.new.complete


# @add = Tasks.new.add_task


erb :"home"

end


MyApp.get "/new" do
	erb :"new"
end

MyApp.post "/new/process" do

	# @rightEmail = Task.sortByName(params[:person], "Bob", "Mary", "Joe", "Lisa", "michaeljducey@gmail.com", "michaeljducey@gmail.com", "mhughes27@gmail.com", "mhughes27@gmail.com")
	# sendEmail = Task.sendTaskReminder(@rightEmail, params[:person], params[:task])
	@newtask = Tasks.new.create_task(params[:person], params[:task], params[:status])
	
	redirect '/'
end






# MyApp.get "/filtered" do
# 	@theseAreNotDone = Task.familyMemberToDos(params[:user])
# 	@theseAreDone = Task.familyMemberDone(params[:user])

# 	erb :"filtered"
# end

# MyApp.get "/" do
# 	@completedTasks = Task.done
# 	@incompleteTasks = Task.notDone
# 	erb :"home"

# end

# MyApp.get "/new" do
# 	erb :"new"
# end


# MyApp.post "/new/process" do
# 	@new_task = params[:task]
# 	@new_person = params[:person]

# 	# TODO - Move the complexity about adding things to a 
# 	# file into a separate function that's defined in
# 	# a model.

# 	somefile = File.open("tasks.txt", "a")
# 	somefile.puts "i|#{@new_person}|#{@new_task}"
# 	somefile.close
#   redirect '/'
# end



# MyApp.get "/edit" do
# 	erb :"edit"
# end

# MyApp.post '/delete' do
# 	Task.deleteTask()
# 	redirect '/'
# 	end