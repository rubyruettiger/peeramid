json.array!(@progressions) do |progression|
  json.extract! progression, :id, :name, :progressable_id, :progressable_type, :is_completed, :is_approved
  json.url progression_url(progression, format: :json)
end
