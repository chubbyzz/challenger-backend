json.success true
json.status 500
json.message "record save susseffully"
# json.params = @params
json.record   do
  json.title = @challenger.title
  json.description = @challenger.description
  json.duration = "#{@challenger.duration} day(s)"
end
