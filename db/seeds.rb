Task.destroy_all


tasks = [
    {
        name: 'Going to work out',
        difficulty: 'Easy',
        experience_points: 5, 
        category: "Gym"
    },
    {
        name: 'Shopping',
        difficulty: 'Easy',
        experience_points: 5, 
        category: "Money"
    },
    {
        name: 'Cooking',
        difficulty: 'Easy',
        experience_points: 5, 
        category: "Food"
    }
]

# create_table "tasklists", force: :cascade do |t|
#     t.integer "user_id"
#     t.integer "task_id"
#     t.string "name"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

# Tasklist.create(name: 'Monday', user_id: 17, task_id: 4)
# Tasklist.create(name: 'Monday', user_id: 17, task_id: 5)
# Tasklist.create(name: 'Monday', user_id: 17, task_id: 6)

tasks.each do |t| 
    Task.create(name: t[:name], difficulty: t[:difficulty], experience_points: t[:experience_points], category: t[:category])
end

