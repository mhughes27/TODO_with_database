MyApp.get "/" do

@tasks = Tasks.new.all
@bob = Tasks.new.bob
@complete = Tasks.new.complete
# @add = Tasks.new.add_task


erb :"home"

end