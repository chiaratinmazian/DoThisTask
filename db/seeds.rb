# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
List.destroy_all
Task.destroy_all

puts 'Creating data...'

chiara = User.new(
  username: "Chiara",
  email: "chiara.tinmazian@gmail.com",
  password: "password",
  )
  chiara.save!
  groceries = List.new(
    title: "Groceries",
    domain: "Personal",
    user: chiara,
    )
    groceries.save!
    tomatoes = Task.new(
      content: "Tomatoes",
      list: groceries,
      )
      tomatoes.save!
    lettuce = Task.new(
      content: "Lettuce",
      list: groceries,
      )
      lettuce.save!
    mcdo = Task.new(
      content: "MacDo",
      state: "done",
      list: groceries,
      )
      mcdo.save!

  clients = List.new(
    title: "Clients",
    domain: "Job",
    user: chiara,
    )
    clients.save!
    bold = Task.new(
      content: "Bold",
      list: clients,
      )
      bold.save!
    caktus = Task.new(
      content: "Caktus",
      list: clients,
      )
      caktus.save!

  briquet = List.new(
    title: "La Briqueterie",
    domain: "Job",
    user: chiara,
    )
    briquet.save!
    growth = Task.new(
      content: "Growth Hacking",
      list: briquet,
      )
      growth.save!
    pastis = Task.new(
      content: "Pastis.Design",
      state: "done",
      list: briquet,
      )
      pastis.save!
    tech = Task.new(
      content: "Pastis.Tech",
      state: "done",
      list: briquet,
      )
      tech.save!

  dev = List.new(
    title: "Dev",
    domain: "Job",
    user: chiara,
    )
    dev.save!
    controller = Task.new(
      content: "Controllers",
      state: "done",
      list: dev,
      )
      controller.save!
    views = Task.new(
      content: "Views",
      list: dev,
      )
      views.save!
    models = Task.new(
      content: "Models",
      list: dev,
      )
      models.save!

  tocall = List.new(
    title: "To call",
    domain: "Else",
    user: chiara,
    )
    tocall.save!
    mom = Task.new(
      content: "Mom",
      list: tocall,
      )
      mom.save!
    dad = Task.new(
      content: "Dad",
      list: tocall,
      )
      dad.save!

  gifts = List.new(
    title: "Gifts",
    domain: "Personal",
    user: chiara,
    )
    gifts.save!
    sister = Task.new(
      content: "Sister",
      list: gifts,
      )
      sister.save!
    brother = Task.new(
      content: "Brother",
      list: gifts,
      )
      brother.save!
  todo = List.new(
    title: "To do before Christmas holidays",
    domain: "Else",
    user: chiara,
    )
    todo.save!
    suitcase = Task.new(
      content: "Suitcase",
      state: "done",
      list: todo,
      )
      suitcase.save!
    work = Task.new(
      content: "Finish Work",
      list: todo,
      )
      work.save!

  cooking = List.new(
    title: "Cooking",
    domain: "Personal",
    user: chiara,
    completed: true,
    completed_at: Time.now,
    )
    groceries.save!
    ingredients = Task.new(
      content: "Take out the ingredients from the fridge",
      list: cooking,
      state: "done",
      )
      ingredients.save!
    preheat = Task.new(
      content: "Pre heat the hoven",
      list: cooking,
      state: "done",
      )
      preheat.save!
    bowls = Task.new(
      content: "Take out the bowls",
      list: cooking,
      state: "done",
      )
      bowls.save!

remi = User.new(
  username: "Remi",
  email: "remi.arnaud@mellonmellon.com",
  password: "password",
  )
  remi.save!
  groceries = List.new(
    title: "Groceries",
    domain: "Personal",
    user: remi,
    )
    groceries.save!
    tomatoes = Task.new(
      content: "Tomatoes",
      list: groceries,
      )
      tomatoes.save!
    lettuce = Task.new(
      content: "Lettuce",
      list: groceries,
      )
      lettuce.save!
    mcdo = Task.new(
      content: "MacDo",
      state: "done",
      list: groceries,
      )
      mcdo.save!

  clients = List.new(
    title: "Clients",
    domain: "Job",
    user: remi,
    )
    clients.save!
    bold = Task.new(
      content: "Bold",
      list: clients,
      )
      bold.save!
    caktus = Task.new(
      content: "Caktus",
      list: clients,
      )
      caktus.save!

  briquet = List.new(
    title: "La Briqueterie",
    domain: "Job",
    user: remi,
    )
    briquet.save!
    growth = Task.new(
      content: "Growth Hacking",
      list: briquet,
      )
      growth.save!
    pastis = Task.new(
      content: "Pastis.Design",
      state: "done",
      list: briquet,
      )
      pastis.save!
    tech = Task.new(
      content: "Pastis.Tech",
      state: "done",
      list: briquet,
      )
      tech.save!

  dev = List.new(
    title: "Dev",
    domain: "Job",
    user: remi,
    )
    dev.save!
    controller = Task.new(
      content: "Controllers",
      state: "done",
      list: dev,
      )
      controller.save!
    views = Task.new(
      content: "Views",
      list: dev,
      )
      views.save!
    models = Task.new(
      content: "Models",
      list: dev,
      )
      models.save!

  tocall = List.new(
    title: "To call",
    domain: "Else",
    user: remi,
    )
    tocall.save!
    mom = Task.new(
      content: "Mom",
      list: tocall,
      )
      mom.save!
    dad = Task.new(
      content: "Dad",
      list: tocall,
      )
      dad.save!

  gifts = List.new(
    title: "Gifts",
    domain: "Personal",
    user: remi,
    )
    gifts.save!
    sister = Task.new(
      content: "Sister",
      list: gifts,
      )
      sister.save!
    brother = Task.new(
      content: "Brother",
      list: gifts,
      )
      brother.save!
  todo = List.new(
    title: "To do before Christmas holidays",
    domain: "Else",
    user: remi,
    )
    todo.save!
    suitcase = Task.new(
      content: "Suitcase",
      state: "done",
      list: todo,
      )
      suitcase.save!
    work = Task.new(
      content: "Finish Work",
      list: todo,
      )
      work.save!

  cooking = List.new(
    title: "Cooking",
    domain: "Personal",
    user: remi,
    completed: true,
    completed_at: Time.now,
    )
    groceries.save!
    ingredients = Task.new(
      content: "Take out the ingredients from the fridge",
      list: cooking,
      state: "done",
      )
      ingredients.save!
    preheat = Task.new(
      content: "Pre heat the hoven",
      list: cooking,
      state: "done",
      )
      preheat.save!
    bowls = Task.new(
      content: "Take out the bowls",
      list: cooking,
      state: "done",
      )
      bowls.save!

thomas = User.new(
  username: "Thomas",
  email: "tf@wearebold.co",
  password: "password",
  )
  thomas.save!
  groceries = List.new(
    title: "Groceries",
    domain: "Personal",
    user: thomas,
    )
    groceries.save!
    tomatoes = Task.new(
      content: "Tomatoes",
      list: groceries,
      )
      tomatoes.save!
    lettuce = Task.new(
      content: "Lettuce",
      list: groceries,
      )
      lettuce.save!
    mcdo = Task.new(
      content: "MacDo",
      state: "done",
      list: groceries,
      )
      mcdo.save!

  clients = List.new(
    title: "Clients",
    domain: "Job",
    user: thomas,
    )
    clients.save!
    bold = Task.new(
      content: "Bold",
      list: clients,
      )
      bold.save!
    caktus = Task.new(
      content: "Caktus",
      list: clients,
      )
      caktus.save!

  briquet = List.new(
    title: "La Briqueterie",
    domain: "Job",
    user: thomas,
    )
    briquet.save!
    growth = Task.new(
      content: "Growth Hacking",
      list: briquet,
      )
      growth.save!
    pastis = Task.new(
      content: "Pastis.Design",
      state: "done",
      list: briquet,
      )
      pastis.save!
    tech = Task.new(
      content: "Pastis.Tech",
      state: "done",
      list: briquet,
      )
      tech.save!

  dev = List.new(
    title: "Dev",
    domain: "Job",
    user: thomas,
    )
    dev.save!
    controller = Task.new(
      content: "Controllers",
      state: "done",
      list: dev,
      )
      controller.save!
    views = Task.new(
      content: "Views",
      list: dev,
      )
      views.save!
    models = Task.new(
      content: "Models",
      list: dev,
      )
      models.save!

  tocall = List.new(
    title: "To call",
    domain: "Else",
    user: thomas,
    )
    tocall.save!
    mom = Task.new(
      content: "Mom",
      list: tocall,
      )
      mom.save!
    dad = Task.new(
      content: "Dad",
      list: tocall,
      )
      dad.save!

  gifts = List.new(
    title: "Gifts",
    domain: "Personal",
    user: thomas,
    )
    gifts.save!
    sister = Task.new(
      content: "Sister",
      list: gifts,
      )
      sister.save!
    brother = Task.new(
      content: "Brother",
      list: gifts,
      )
      brother.save!
  todo = List.new(
    title: "To do before Christmas holidays",
    domain: "Else",
    user: thomas,
    )
    todo.save!
    suitcase = Task.new(
      content: "Suitcase",
      state: "done",
      list: todo,
      )
      suitcase.save!
    work = Task.new(
      content: "Finish Work",
      list: todo,
      )
      work.save!

  cooking = List.new(
    title: "Cooking",
    domain: "Personal",
    user: thomas,
    completed: true,
    completed_at: Time.now,
    )
    groceries.save!
    ingredients = Task.new(
      content: "Take out the ingredients from the fridge",
      list: cooking,
      state: "done",
      )
      ingredients.save!
    preheat = Task.new(
      content: "Pre heat the hoven",
      list: cooking,
      state: "done",
      )
      preheat.save!
    bowls = Task.new(
      content: "Take out the bowls",
      list: cooking,
      state: "done",
      )
      bowls.save!

florence = User.new(
  username: "Florence",
  email: "fs@wearebold.co",
  password: "password",
  )
  florence.save!
  groceries = List.new(
    title: "Groceries",
    domain: "Personal",
    user: florence,
    )
    groceries.save!
    tomatoes = Task.new(
      content: "Tomatoes",
      list: groceries,
      )
      tomatoes.save!
    lettuce = Task.new(
      content: "Lettuce",
      list: groceries,
      )
      lettuce.save!
    mcdo = Task.new(
      content: "MacDo",
      state: "done",
      list: groceries,
      )
      mcdo.save!

  clients = List.new(
    title: "Clients",
    domain: "Job",
    user: florence,
    )
    clients.save!
    bold = Task.new(
      content: "Bold",
      list: clients,
      )
      bold.save!
    caktus = Task.new(
      content: "Caktus",
      list: clients,
      )
      caktus.save!

  briquet = List.new(
    title: "La Briqueterie",
    domain: "Job",
    user: florence,
    )
    briquet.save!
    growth = Task.new(
      content: "Growth Hacking",
      list: briquet,
      )
      growth.save!
    pastis = Task.new(
      content: "Pastis.Design",
      state: "done",
      list: briquet,
      )
      pastis.save!
    tech = Task.new(
      content: "Pastis.Tech",
      state: "done",
      list: briquet,
      )
      tech.save!

  dev = List.new(
    title: "Dev",
    domain: "Job",
    user: florence,
    )
    dev.save!
    controller = Task.new(
      content: "Controllers",
      state: "done",
      list: dev,
      )
      controller.save!
    views = Task.new(
      content: "Views",
      list: dev,
      )
      views.save!
    models = Task.new(
      content: "Models",
      list: dev,
      )
      models.save!

  tocall = List.new(
    title: "To call",
    domain: "Else",
    user: florence,
    )
    tocall.save!
    mom = Task.new(
      content: "Mom",
      list: tocall,
      )
      mom.save!
    dad = Task.new(
      content: "Dad",
      list: tocall,
      )
      dad.save!

  gifts = List.new(
    title: "Gifts",
    domain: "Personal",
    user: florence,
    )
    gifts.save!
    sister = Task.new(
      content: "Sister",
      list: gifts,
      )
      sister.save!
    brother = Task.new(
      content: "Brother",
      list: gifts,
      )
      brother.save!
  todo = List.new(
    title: "To do before Christmas holidays",
    domain: "Else",
    user: florence,
    )
    todo.save!
    suitcase = Task.new(
      content: "Suitcase",
      state: "done",
      list: todo,
      )
      suitcase.save!
    work = Task.new(
      content: "Finish Work",
      list: todo,
      )
      work.save!

  cooking = List.new(
    title: "Cooking",
    domain: "Personal",
    user: florence,
    completed: true,
    completed_at: Time.now,
    )
    groceries.save!
    ingredients = Task.new(
      content: "Take out the ingredients from the fridge",
      list: cooking,
      state: "done",
      )
      ingredients.save!
    preheat = Task.new(
      content: "Pre heat the hoven",
      list: cooking,
      state: "done",
      )
      preheat.save!
    bowls = Task.new(
      content: "Take out the bowls",
      list: cooking,
      state: "done",
      )
      bowls.save!

puts 'Database created !!'
