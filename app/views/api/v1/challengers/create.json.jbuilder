json.success true
json.status 500
json.message "record save susseffully"
if @challenger.errors.any?
	json.errors = @challenger.errors
else
	json.record do
	  json.title = @challenger.title
	  json.description = @challenger.description
	  json.duration = "#{@challenger.duration} day(s)"
	end
end
