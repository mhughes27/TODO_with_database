class Tasks
	def all 
		DB.execute("SELECT * FROM tasks;")
	end

	def bob
		DB.execute("SELECT * FROM tasks WHERE name=\"Bob\";")
	end

	def complete
		DB.execute("SELECT * FROM tasks WHERE status=\"complete\";")
	end

	def create_task(name, task, status)
		DB.execute("INSERT INTO tasks (name, description, status) VALUES (\"#{name}\", \"#{task}\", \"#{status}\");")
	end



	# def add_task()
	# 	DB.execute("INSERT INTO tasks (name, description, status) VALUES name=\"Lisa\", description=\"Feed the fish\", status=\"incomplete\";")
	# end


# the class end
end
