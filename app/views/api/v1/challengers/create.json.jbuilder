json.success @success
if @success
  json.message "record save susseffully"
end
json.status @status
if @challenger.errors.any?
	json.errors @challenger.errors
else
	json.record do
	  json.title = @challenger.title
	  json.description = @challenger.description
	  json.duration = "#{@challenger.duration} day(s)"
	end
end
