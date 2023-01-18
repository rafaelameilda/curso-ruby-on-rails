Article.delete_all

user = User.first
text = 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Totam nulla aspernatur ipsa minus consectetur atque tenetur aliquam odit doloremque numquam ut, dolores laboriosam id commodi quisquam, est rerum esse molestias.'

p 'Iniciando...'

Category.all.each do |category|
  30.times do
    Article.create!(
      title: "Article #{rand(10_000)}",
      body: text,
      category_id: category.id,
      user_id: user.id,
      created_at: rand(365).days.ago
    )
  end
end

p 'Perminou!'
