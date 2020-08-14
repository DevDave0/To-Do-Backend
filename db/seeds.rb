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

tasks.each do |t| 
    Task.create(name: t[:name], difficulty: t[:difficulty], experience_points: t[:experience_points], category: t[:category])
end 