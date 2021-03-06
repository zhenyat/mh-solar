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
      seo_title: 'TreePlexus +796 888 333 55',
      seo_description: 'Изделия ручной работы из конопли, хлопка, замши и других натуральных экологически чистых материалов. Конопляные рюкзаки, шапки, сумки и аксессуары из Непала. Замшевая обувь и сумочки с теплом и любовью шьют мастерицы из Индии. Авторская одежда из непальской конопляной пряжи и индийского хлопкового трикотажа'
    )
    puts "===== Done: 'Comapny' record"
  end
rescue
  puts "===== Achtung! 'Company' entity: something went wrong"
end

######  Categories ######
begin
  if (Category.present? and not Category.exists?)
    Category.create([
      { name:     'products', 
        title:    'Продукты',
        abstract: 'Натуральные конопляные продукты богаты белками, витаминами, аминокислотами и незаменимыми микроэлементами. Бережная обработка продуктов способствует сохранению всех полезных свойств и рекомендуется к употреблению для оздоровления всего организма',
        url:      'eda-iz-conopli',
        seo_title: 'Продукты',
        seo_description: 'Натуральные конопляные продукты богаты белками, витаминами, аминокислотами и незаменимыми микроэлементами. Бережная обработка продуктов способствует сохранению всех полезных свойств и рекомендуется к употреблению для оздоровления всего организма.',
        seo_keywords:    'макароны конопляные,макароны из конопли,макароны безглютеновые,макароны из конопли купит москва,макароны коноплектика,паста конопляная,конопляная паста,паста из конопли,Клетчатка из конопли,клетчатка конопляная,клетчатка конопли,клетчатка из семян конопли,клетчатка полезная,клетчатка купить москва,конопляная клетчатка купить,клетчатка конопли купить,ядра семян конопли,ядра конопли,коноплектика,ядра семян очищенные конопляные,конопляные ядра,очищенные семена конопли,ядра конопли купить москва,семена конопли жареные,жареные семена конопли,семена конопли,конопляные семена,полезные семена,семечки конопляные,жареные семечки,сушки конопляные,сушки из конопли,сушки конопляные купить москва,сушки космос здоровья,космос здоровья,сушки бездрожжевые,сушки без дрожжей купить москва,леденец без сахара,конопляный леденец без сахара,конопляные леденцы,леденец из конопли,сосалка из конопли,конфета из конопли,конопляный леденец,леденцы из конопли,конфеты из конопли,сосалки конопляные,сосалки из конопли,конопляный батончик купить москва,купить конопляный батончик,батончик из конопли купить москва,вега еда,вега снэк,веганский батончик,конопляный батончик,хемповый батончик,конопляный батончик детокс,хемповый батончик детокс,питательный вегетарианский батончик,вега снэкротеин,конопляный протеин,белковые коктейли,биоактивная протеиновая добавка,живое масло,натуральное масло,полезное масло для салатов,конопель,конопляное масло первый отжим,оноплжое масло,масло конопли,нерафинированное полезное масло,масло для салатов,заправка для салатов,конопляное масло extra virgin,купить конопляное масло в москве,конопляное масло купить,польза конопляного масла,масло из семян конопли,масло из ядер конопли,масло первого отжима из конопли,конопляные семечки,ядра конопли очищенные,очищенные ядра конопли москва купить,очищенные ядра конопли купить москва,купить очищенные ядра конопли,купить семена конопли москва,конопляный белок,коноплин,конопля для жизни,конопляная еда,конопляный салат,конопля,еда из конопли,еда из конопли москва,еда из конопли купить в москве,полезная еда,веган еда,еда для вегетарианцев,растительная еда,полезная растительная еда,,шоколадная паста из конопли,шоколадная паста из ядер конопли,паста шоколадная из коноплиурбеч,протертые ядра конопли,урбеч конопляный,урбеч из ядер конопли,урбеч,конопляное масло,мука из конопли,конопляная мука,полезная зерновая мука,мука из конопли купить москва,конопляная мука купить москва,полезная мука,зерновая мука,мука конопельпротеин,отборные семена конопли,конопляные семена купить москва,купить конопляные семена,купить семена конопли,семена конопли для проращивания,а из конопли,урбеч из конопли,урбеч натуральный,купить урбеч москва,урбеч митино,урбеч из ядер конопли купить в москве,урбеч доставка по москве,урбеч доставка во время карантина,урбеч из конопляных ядер,полезные продукты доставка москва'
      },
      { name:     'cosmetics', 
        title:    'Косметика',
        abstract: 'Косметические средства по уходу на основе масла конопли защищают кожу и волосы от вредного внешнего воздействия, оказывают увлажняющий, питательный, разглаживающий и восстанавливающий эффекты. Семена конопли содержат: белки, углеводы, питательные вещества, минералы и волокна. Конопляное масло богато витаминами E, C, B1, B2, B3, B6.',
        url:      'konoplyanaya-kosmetika',
        seo_title:       'Косметика',
        seo_description: 'Косметические средства по уходу на основе масла конопли защищают кожу и волосы от вредного внешнего воздействия, оказывают увлажняющий, питательный, разглаживающий и восстанавливающий эффекты. Семена конопли содержат: белки, углеводы, питательные вещества, минералы и волокна. Конопляное масло богато витаминами E, C, B1, B2, B3, B6',
        seo_keywords:    'духи с феромонами,мужские духи с феромонами,духи с коноплей,туалетная вода с конопле,туалетная вода с феромонами для женщин,феромоны,женские феромоны,женские духи с феромонами,конопляный бальзам,косметика из конопли,бальзам заживляющий,растительная косметика,вега,крем для рук коноля,hempz,hempz +для тела,hempz косметика,hempz купить,молочко hempz,молочко +для тела hempz,hempz отзывы,крем hempz,шампунь hempz,скраб hempz,hempz сайт,hempz косметика официальный,hempz официальный сайт,hempz косметика официальный сайт,купить косметику hempz,hempz herbal,hempz +для тела отзывы,hempz +для тела купить,лосьон hempz,крем +для тела hempz,hempz скраб +для тела,hempz москва,hempz волосы,hempz body,молочко hempz отзывы,купить молочко hempz,hempz спб,купить hempz +в москве,молочко +для тела hempz купить,hempz молочко +для тела отзывы,hempz купить +в спб,лосьон +для тела hempz,hempz цена,шампунь hempz отзывы,крем hempz купить,hempz кондиционер,hempz +для рук,hempz тройное увлажнение,hempz крем +для рук,бальзам hempz,hempz молочко +для тела увлажняющее,масло hempz,hempz косметика официальный сайт купить,гели hempz,шампунь hempz купить	71 hempz магазин,hempz косметика купить +в москве,автозагар hempz,hempz herbal moisturizer,hempz интернет магазин,похожие на «hempz»,косметика волос цена,кальвадос цена,шампунь keune,alfaparf milano,косметика эстель,hair company,профессиональный шампунь,косметика волос купить,шампунь питательный,растительный шампунь,шампунь увлажняющий,шампунь конополяный,шампунь на конопляном маслекрем для рук коноля,вегакондиционер питательный,растительный кондиционер,кондиционер увлажняющий,гель для душа,питательный гель  для душа,увлажняющий гель для душа,гель для души и душа,тательный,скраб для тела,сахарный скраб,питательный скраб для тела,элитная косметика,молочко для тела из конопли,конопляное молочко для тела,растительное молочко для тела,молочко с маслом конопли,я,антивозрастной скраб,скраб для тела антивозрастной,скраб для тела омолаживающий,скраб для тела hempz,скраб hempz антивозастной,антивозрастное молочко,молочко омолаживающее,антивозрастное молочко для тела,антивозрастное молочко для тела hempz,hempz антивозрастное молочко отзывы,молочко антивозрастное купить москва,увлажняющее молочко для тела купить,ултра увлажнение кожи,экстра увлажение кожи,косметика hempz,молочко с мерцающим эффектом,молочко для тела увлажняющее,молочко для тела с блеском купить,молочко для тела с мерцающим эффектом купить,шампунь гранат,шампунь для волос гранат,шампунь для волос hempz гранат,шампунь hempz купить,шампунь hempz купить москва,hempz pomegrante,hempz гранат,гранатовый сок,корень женьшелня,масло ши,масло карте,корень имбиря,грейпфрут,цитрусовые,масло конопли,конопляное масло,косметика с маслом конопли,конопляная косметика,кондиционер для волос из конопли,конопляный кондиционер,ондиционер для тела купить,кондиционер гранат,кондиционер для волос гранат,кондиционер для волос hempz гранат,кондиционер hempz купить,кондиционер hempz купить москва,шампунь для волос тройное увлажнение,шампунь тройное увлажнение,шампушнь hempz тройное увлажнение,увлажняющие шампунь купить,кондиционер для волос тройное увлажнение,кондиционер тройное увлажнение,кондиционер hempz тройное увлажнение,кондиционер hempz'
      },
      { name:     'bags', 
        title:    'Рюкзаки и экосумки из конопли',
        abstract: 'Продуманные рюкзаки и сумки из конопли. Экологичные авоськи. Эргономичные сумки на пояс.',
        url:      'ryukzaki-i-ekosumki-iz-konopl',
        seo_title:       'Рюкзаки и экосумки из конопли',
        seo_description: 'Продуманные рюкзаки и сумки из конопли. Экологичные авоськи. Эргономичные сумки на пояс.',
        seo_keywords:    'рюкзак,конопля,hemp,handmade,путешествие,поход,эксклюзив,нарантан,Рюкзак Рюкзак himalayn shivpuri,Рюкзак-торба из конопли Хеламбу раста пооски,рюкзак торба,торба из конопли,рюкзак торба из конопли,сумка багмати,сумка из конопли багмати Чёрный зигзаг,сумка из конопли экологичная,вместительная сумка из конопли,сумка из конопли багмати,экологичная сумка,экологичный подарок,подарок,доставка во время карантина,доставка по митино,красный рюкзак,красный компактный рюкзак,карсный мини рюкзак,красный мини рюкзак,красный рюкзак из конопли купить москва,оранжевый рюкзак купить,купить оранжевый рюкзак,туризм,необычно,сваямбу,хемп,вместительный,износостойкий рюкзак,маленький рюкзак купить,миниатюрный рюкзак купить,рюкзак удобный маленький купить москва,дамский рюкзак,женский рюкзак купить москва,тамель,гималаи,износостойки,Рюкзак-торба из конопли Хеламбу раста,Рюкзак-торба из конопли Хеламбу Яркие полоски,сумка из конопли багмати Жёлто-оранжевая,зелёный рюкзак из конопли купить москва,зелёный рюкзак купить,купить зелёный рюкзак,чёрный мини рюкзак,чёрный рюкзак из конопли купить москва,сумка из конопли,бежевый,полоски,полосатый,кумари,раста,каннабис,сумка на пояс купить,сумка на пояс купить онлайн,сумка на пояс купить москва,конопляная сумка купить москва,сумка на пояс,невари,коричневая сумка,конопляное волокно,конопляная ткань'
      }
    ])
    puts "===== Done: 'Category' record(s)"
  end
rescue
  puts "===== Achtung! 'Category' entity: something went wrong"
end