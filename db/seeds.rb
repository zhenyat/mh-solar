######  Users ######
begin
  if (User.present? and not User.exists?)
    User.create first_name: 'Bob', last_name: 'Dummy',   role: 2, email: 'dummy@mail.ru',  password: '123123123', password_confirmation: '123123123'
    User.create first_name: 'Alex', last_name: 'Petrov', role: 0, email: 'alex@gmail.com',  password: '123123123', password_confirmation: '123123123'
    puts "===== Done: 'User' record(s)"
  end
rescue
  puts "===== Achtung! 'User' entity does not exist"
end

######  Samples ######
begin
  if (Sample.present? and not Sample.exists?)
    Sample.create([
      { name:   'hemp_paste', 
        title:  'Паста конопляная Классическая 200 г',
        price:  288.00,
        quantity: 14
      },
      { name:   'hemp_mask_grey', 
        title:  'Серая конопляная маска 3-слойная',
        price:  198.00
      },
      { name:   'hemp_hat', 
        title:  'Шляпа оранжевая из конопли',
        price:  1088.00,
        quantity: 9
      },
      { name:   'hemp_bag', 
        title:  'Рюкзак из конопли Нарантан',
        price:  3188.00,
        quantity: 9
      }
    ])
    puts "===== Done: 'Sample' record(s)"
  end
rescue
  puts "===== Achtung! 'Sample' entity does not exist"
end

######  Companies ######
begin 
  if (Company.present? and not Company.exists?)
    Company.create(
      name:      'tree_plexus', 
      title:     'Лесной магазинчик',
      email:     'treeplexus@mail.ru',
      phone:     '+796 888 333 55',
      address:   'город Москва, Ангелов переулок, д.8',
      url:       'http://treeplexus.ru',
      seo_title: '| TreePlexus +796 888 333 55',
      seo_description: 'Изделия ручной работы из конопли, хлопка, замши и других натуральных экологически чистых материалов. Конопляные рюкзаки, шапки, сумки и аксессуары из Непала. Замшевая обувь и сумочки с теплом и любовью шьют мастерицы из Индии. Авторская одежда из непальской конопляной пряжи и индийского хлопкового трикотажа'
    )
    puts "===== Done: 'Comapny' record"
  end
rescue
  puts "===== Achtung! 'Company' entity: something went wrong"
end
