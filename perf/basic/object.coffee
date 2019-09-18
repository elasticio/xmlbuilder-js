perf 'Create simple object', 1000, () ->
  obj =
    ele: "simple element"
    person:
      name: "John"
      '@age': 35
      '?pi': 'mypi'
      '#comment': 'Good guy'
      '#cdata': 'well formed!'
      unescaped:
        '#raw': '&<>&'
      address:
        city: "Istanbul"
        street: "End of long and winding road"
      contact:
        phone: [ "555-1234", "555-1235" ]
      id: () -> return 42
      details:
        '#text': 'classified'

  xml(obj)

perf 'Character escaping', 1000, () ->
  obj =
    node: "simple element"
    ele:
      '#text': '&<>\r'
      '@att': '&<"\t\n\r'

  xml(obj)

perf 'Long text', 1000, () ->
  text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque faucibus dui metus, quis mattis nibh sollicitudin ut. Suspendisse efficitur vestibulum purus ut luctus. Maecenas mollis purus sit amet enim sollicitudin dapibus. Aenean eget enim maximus, semper lacus eget, posuere sapien. Maecenas iaculis ipsum in facilisis commodo. Integer tincidunt, mi ut interdum euismod, massa ligula tincidunt sem, in dapibus ipsum risus quis mauris. Nullam maximus mi quis mollis rhoncus. Donec sollicitudin, neque fringilla feugiat vulputate, risus elit luctus nisi, in varius magna enim sed lorem. Phasellus elementum lacus in nisi pharetra, nec semper arcu sodales. Suspendisse ac condimentum magna, vel pretium massa. Duis vehicula neque sapien, id cursus nulla vestibulum at. Sed vehicula consequat eros, in hendrerit risus dictum quis. Nunc nec sodales leo. Suspendisse ut lorem in ipsum bibendum imperdiet sit amet a orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

Mauris elementum luctus nisi eget suscipit. Donec vel molestie est. Nam molestie libero ac magna varius mollis. Donec sem massa, luctus et metus sed, pellentesque porttitor lectus. Donec volutpat erat id efficitur tempus. Pellentesque mattis molestie erat nec cursus. Donec est arcu, hendrerit sit amet accumsan non, tincidunt dignissim massa. Suspendisse eget varius diam, faucibus porta odio. Vivamus auctor lectus orci, eget luctus dolor aliquet semper. Nam pulvinar tempus arcu, a semper lorem tincidunt quis. Nam dolor velit, dapibus sed augue ac, condimentum placerat ipsum. Suspendisse dapibus, sapien non ultricies convallis, sapien dolor viverra nibh, non hendrerit leo ipsum quis mi. Cras aliquet nec velit at scelerisque. Sed id commodo nunc, at dignissim nisi.

In eget pretium nulla, vitae laoreet mauris. Mauris ac dui at purus dapibus iaculis et a neque. Pellentesque ut sapien nibh. Duis nulla erat, gravida eget dolor et, euismod blandit enim. Integer maximus facilisis purus, non posuere nulla commodo ut. Integer non facilisis mauris. Phasellus libero sapien, sollicitudin in massa vel, porttitor rhoncus lectus. Fusce interdum felis vel metus consequat, sed tempor urna imperdiet. Pellentesque sit amet ultricies nibh. In viverra tellus in sodales pellentesque. Nullam nisl leo, hendrerit vitae ipsum eget, ullamcorper dictum orci. Maecenas ac metus id lacus pellentesque vestibulum ac eget lacus. Nam congue eros sed dapibus auctor. Cras a purus ut urna viverra consequat. Fusce quis arcu condimentum, vestibulum eros eu, fermentum eros.

In ut mauris at augue consectetur hendrerit at eget lorem. Fusce a lacus eget mi commodo molestie eu eu ante. Pellentesque congue feugiat varius. Suspendisse lacinia, mauris ac rutrum molestie, nulla ex aliquet urna, at vestibulum nunc turpis id justo. Suspendisse est leo, euismod consequat mollis id, varius eget velit. Suspendisse quis euismod orci. Vestibulum quis blandit risus. Donec eget sagittis mauris. Curabitur eu ligula nec ante suscipit congue. Fusce efficitur scelerisque varius. Integer pulvinar eros a volutpat bibendum. Vivamus vitae est id velit pharetra venenatis. In quis interdum mi.

Pellentesque faucibus ultricies diam, id laoreet sem dignissim et. Ut elementum urna eget leo vestibulum, quis varius enim porttitor. Fusce vitae laoreet velit. Quisque at tempor quam, non mollis augue. Pellentesque pharetra consectetur erat id porttitor. Fusce feugiat erat purus. Morbi nec ultrices leo. Integer purus nunc, posuere ut nisi at, tempor ultricies tellus. Nullam eu accumsan magna. Cras vestibulum ipsum vitae dui commodo laoreet. Suspendisse non elementum metus, et ultricies dui.

Mauris id lorem id mauris dictum iaculis. Phasellus molestie purus sit amet diam sollicitudin scelerisque. Suspendisse potenti. Vestibulum pharetra eu odio id ornare. Etiam fringilla, massa a finibus auctor, est leo posuere ante, vitae malesuada enim nisi condimentum nunc. Quisque blandit finibus molestie. Donec sed iaculis sapien. Vivamus suscipit nibh ut elit venenatis, lacinia eleifend nisi pulvinar. Nunc faucibus magna nec felis viverra dignissim. Sed maximus sem erat, vel accumsan erat dignissim ac. Pellentesque rutrum elit lectus, vel efficitur nisi tristique at. Vivamus non volutpat turpis, non fringilla nisl. Duis tincidunt faucibus massa a interdum. Ut ac nulla id nulla ornare dapibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.

In pretium neque vel mauris imperdiet, nec porta nunc tristique. Nullam id volutpat tortor. Nunc augue orci, vehicula in consectetur in, euismod sit amet lectus. Duis vehicula sagittis tortor, ut cursus ipsum finibus in. Sed vel dui eros. Fusce vehicula justo et lobortis suscipit. Nulla varius, arcu sit amet pulvinar consectetur, urna dolor suscipit nisi, feugiat interdum augue sem a justo. Proin vitae felis mattis, tempus justo ornare, pharetra sem. Nam dictum lorem et nisl lobortis mattis. Curabitur nibh nulla, pulvinar nec justo a, consectetur consectetur erat. Phasellus semper nisl est, et molestie nisl consectetur a. Maecenas ut placerat elit. Ut mattis tincidunt ex, semper hendrerit neque ultrices nec. Curabitur leo massa, dictum at libero eget, molestie luctus risus. In aliquet a erat sed accumsan. Vestibulum venenatis ante ligula, sit amet vestibulum est mollis vitae.

Donec interdum augue eget feugiat venenatis. Mauris interdum tristique urna eu cursus. Donec sit amet diam volutpat massa posuere lacinia a quis lorem. Vivamus et condimentum eros. Sed eleifend dolor eros, laoreet lobortis risus elementum ac. Donec eget semper mauris. Etiam gravida arcu tortor, id egestas sapien vestibulum et. Curabitur tristique urna at nibh bibendum, et blandit turpis feugiat. Cras dignissim lectus rhoncus elit consectetur vestibulum. Ut finibus nisl in sapien mollis, eu faucibus nisi blandit. Ut velit felis, luctus condimentum quam vel, accumsan blandit sem.

Nullam eros risus, ultrices vitae ipsum eget, cursus mollis turpis. Aenean sagittis nibh sit amet viverra lobortis. Quisque ut neque enim. In velit tortor, vulputate sit amet tristique eu, tempor eu tortor. Integer molestie ante vitae odio ultricies imperdiet. Nulla ut finibus lectus. Etiam ac metus malesuada, gravida neque sit amet, consequat nulla. Pellentesque eu arcu ut odio egestas vehicula sed a augue. Nulla egestas condimentum condimentum. Mauris ultrices viverra odio at egestas. Proin sem purus, sodales a tincidunt id, bibendum ut lacus. Aliquam eget laoreet lectus, eu varius sem. Mauris mattis vehicula sem, id egestas dui consectetur nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

Etiam quis dolor ac ante luctus volutpat. Donec aliquam gravida auctor. Nulla suscipit arcu ut molestie sodales. Nunc convallis enim accumsan, porttitor augue sit amet, gravida orci. Donec mollis urna ligula, a sodales quam vulputate non. Pellentesque in suscipit orci. Fusce scelerisque metus sit amet nisl hendrerit, et viverra purus luctus. Phasellus ac imperdiet lacus, sit amet convallis nisl. Mauris vel massa pellentesque, mattis augue sit amet, posuere lectus. Proin ac sagittis ipsum. Nam ligula purus, consequat sed odio at, suscipit pulvinar augue. Donec hendrerit tempus felis accumsan lobortis.

Donec id neque cursus, accumsan dui sed, dapibus lectus. In tempus felis odio. Vivamus dignissim commodo ante, nec egestas urna sagittis ut. Integer maximus malesuada pharetra. Praesent dui mauris, malesuada ac tempus eget, cursus lobortis arcu. Sed nec consectetur purus. Maecenas eget pellentesque nisl.

Vestibulum a neque turpis. Aenean porta fermentum maximus. In at leo dignissim, laoreet metus at, condimentum augue. Pellentesque vitae enim efficitur, tristique ex vitae, commodo mi. Donec vehicula euismod sapien, at pulvinar tellus molestie a. Etiam ut leo consectetur, condimentum sapien scelerisque, tempor metus. Maecenas nisi risus, varius eget viverra rhoncus, mattis vel massa.

Proin tempor lacinia augue et varius. Mauris a velit metus. Quisque a lorem est. Sed ex sapien, rutrum sit amet vestibulum non, efficitur ut ante. Sed quis arcu mollis, tempor est non, ultricies metus. Sed at rutrum risus. Proin efficitur, tellus vitae consequat condimentum, metus purus facilisis libero, sit amet venenatis sapien elit eu libero. Praesent eget elit nec nisl egestas maximus ac ut odio. Pellentesque a ligula arcu. Nunc nibh arcu, efficitur ut feugiat sed, aliquam sit amet ipsum. Phasellus pharetra ut est sit amet dignissim. In consequat ultricies pretium. Proin euismod, ex id condimentum tempus, nulla tortor faucibus dolor, et efficitur velit arcu sit amet sem. Fusce finibus congue volutpat. Morbi ornare lectus ornare ex sodales, ut rhoncus neque consectetur. Aliquam lobortis scelerisque arcu sit amet elementum.

Nullam quis diam in mi varius fringilla. Phasellus nibh quam, vehicula et pellentesque a, pellentesque eu tellus. Nam ac auctor erat. Quisque laoreet, libero non ullamcorper vestibulum, risus nisl consectetur diam, quis porta erat sapien vitae dui. Aenean efficitur, libero a tincidunt commodo, sapien purus blandit sem, vel auctor ante augue ac metus. Pellentesque eu mi urna. Sed condimentum, lacus sit amet varius feugiat, neque ex rhoncus enim, in fermentum turpis metus a libero. Praesent risus purus, malesuada nec accumsan in, tempor ac tellus. Etiam posuere lacinia feugiat. Praesent sagittis, nulla sed scelerisque lacinia, ipsum mi laoreet elit, ut lacinia quam dui semper nibh.

In eget purus placerat, euismod justo at, feugiat eros. Aliquam eget tristique erat. Praesent vehicula neque vitae ex pretium, at sagittis erat tincidunt. Duis nec facilisis lorem. Sed pharetra ut tellus a feugiat. Suspendisse luctus placerat laoreet. Pellentesque eu tempus quam. Quisque eu magna a velit ultricies ullamcorper ac in erat. Mauris ex purus, pellentesque eget congue nec, bibendum at arcu. Nam eros ipsum, pellentesque a massa eget, porta efficitur mi.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor ex a posuere ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque faucibus convallis lectus, et ullamcorper nisl pharetra ac. Vivamus eu tortor at dui tempor vulputate. Suspendisse at magna quis ipsum fringilla sodales in vel tellus. Phasellus tellus dolor, sollicitudin ac odio vitae, pellentesque ullamcorper justo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque volutpat convallis sem. Ut varius, sapien vitae tincidunt malesuada, orci ante tempus nisl, eget iaculis turpis mauris ac orci.

Aliquam pretium hendrerit ligula, ut euismod est imperdiet id. Fusce leo massa, blandit sit amet sagittis ut, elementum quis odio. Sed sit amet urna a sem elementum tincidunt id eu libero. In convallis nisi et tellus mollis mollis. Nullam id pretium lorem. Phasellus vel sodales arcu. Integer nec erat vitae justo accumsan porttitor accumsan a eros. Nunc mattis sagittis velit, ut tempor neque maximus in. Nulla vulputate purus non metus venenatis ultrices a non tellus. Praesent sodales nisi quis efficitur imperdiet. Donec a quam id risus interdum sollicitudin eget et orci. Donec hendrerit vel sem in condimentum.

Praesent vel ultricies lorem. Vestibulum tempus malesuada elit a gravida. Proin cursus nisl urna, et finibus nisl porttitor sed. Donec tristique leo vel sem pharetra maximus. Praesent eleifend felis eu imperdiet semper. Etiam pretium mauris diam. Nam quam nisl, laoreet eget scelerisque accumsan, luctus quis dui. Integer at ornare odio.

Sed id tellus velit. Pellentesque vitae condimentum justo. Vestibulum fringilla mauris nec laoreet tincidunt. Maecenas arcu ligula, euismod ut convallis ac, tincidunt id nibh. Aliquam eu sollicitudin velit. Nulla nec sapien leo. Nullam venenatis vel justo vestibulum accumsan. Pellentesque sapien magna, dignissim eget lorem in, condimentum efficitur nisi. Sed quis turpis pellentesque metus aliquam sollicitudin eget vel orci. Sed ac orci nec libero posuere aliquam at quis velit. Quisque at pellentesque quam. Quisque venenatis felis est, eu scelerisque dui elementum non.

Duis venenatis eleifend commodo. In hac habitasse platea dictumst. Proin elementum, mi sed suscipit blandit, purus quam lacinia lectus, ut venenatis felis elit at nulla. Aenean dignissim lacus ac lectus lacinia convallis. Donec fringilla leo purus. Suspendisse potenti. Curabitur aliquam sodales dui ut imperdiet.

Nam in ex id augue facilisis ornare non nec lorem. Nam dolor ex, facilisis nec dignissim vel, mollis eget ex. Aliquam consectetur turpis eget quam pellentesque, at pretium dolor volutpat. Cras sed velit quis dolor scelerisque rhoncus sit amet vel lectus. Sed lacinia arcu convallis mattis aliquet. Proin faucibus vulputate varius. Nullam vel dictum libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Aliquam mauris ex, faucibus nec tempor quis, placerat maximus augue. Suspendisse commodo pretium sem quis laoreet. Vivamus porta, urna eu tincidunt semper, purus sem tempor sem, ut condimentum diam nibh vel mi. Donec sit amet tellus sit amet mauris vestibulum feugiat. Aliquam in orci quis est feugiat porttitor. Aliquam nec metus ac urna viverra tincidunt.

Nunc ac orci cursus, faucibus justo nec, lobortis tortor. Nulla tincidunt scelerisque risus, at blandit arcu elementum sed. Maecenas non justo dapibus, tincidunt nibh in, porta neque. Sed non mi id leo vestibulum iaculis. Nam ultricies odio eget arcu vehicula tempus. Suspendisse maximus consectetur arcu, id dapibus lacus mollis et. Fusce nec vulputate nulla. Nam dictum eget sapien id interdum. Duis mi sem, gravida nec dolor vel, elementum facilisis tellus. Integer vel accumsan diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in commodo ex. Praesent commodo porttitor ipsum. Vestibulum volutpat diam at tellus feugiat, id sodales magna bibendum. Mauris odio eros, rutrum at scelerisque eget, porta sed turpis. Suspendisse porta dictum cursus.

Mauris accumsan finibus mi sit amet auctor. Aliquam erat volutpat. Vestibulum at euismod sapien, euismod tincidunt lectus. Mauris aliquet sapien at erat vestibulum, a vestibulum dui bibendum. Etiam vel vulputate justo. Nam vitae ultrices nisl, eu dapibus ex. Quisque volutpat nibh vitae semper tristique. Mauris in nibh lectus. Maecenas elit leo, ultricies quis bibendum sed, rhoncus et neque. Sed elementum nec dui id lobortis. Vestibulum sollicitudin arcu nulla, sit amet lobortis urna ultrices a. Cras fermentum dolor id faucibus pretium. Pellentesque congue quam metus, quis consequat leo sollicitudin vitae.

Integer congue, neque a scelerisque varius, purus nibh fringilla nunc, sit amet pretium felis sapien vel orci. Donec mattis ac orci in viverra. Suspendisse a justo sollicitudin lacus efficitur ullamcorper. Mauris faucibus nisl quis dolor volutpat aliquam. Aenean venenatis, odio et rhoncus lobortis, risus ligula finibus massa, non dignissim augue nisl vel arcu. Nullam fringilla odio at libero scelerisque, vitae placerat nisi fringilla. Etiam quis urna turpis. Quisque quis leo ante. Duis nec elit massa. Sed porttitor, nulla id efficitur blandit, purus ligula vulputate lectus, quis molestie metus orci ac tellus. Donec sapien massa, suscipit eu tristique ac, posuere sed lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Duis bibendum erat eget felis tempor, eget imperdiet nibh vestibulum. In hac habitasse platea dictumst. Quisque vehicula pulvinar turpis, ac dictum risus auctor varius.

Praesent ac ex vestibulum, dapibus lacus in, malesuada diam. Sed in turpis in justo venenatis pharetra. Fusce sed lobortis nisl. Phasellus faucibus magna ante, malesuada placerat justo faucibus tempus. Phasellus hendrerit fermentum felis. Proin malesuada, urna vel tincidunt pharetra, eros ante bibendum sem, nec viverra nunc arcu at mauris. Sed et lorem pharetra, feugiat tortor vitae, rutrum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mauris leo, condimentum at risus eget, aliquam consequat mauris. Mauris id auctor purus.

Aenean augue mauris, cursus quis elit eget, molestie pharetra sem. Mauris congue felis ut nibh facilisis, ut pharetra arcu pharetra. Curabitur semper mattis orci eu dictum. Phasellus hendrerit scelerisque dignissim. Sed aliquet nunc scelerisque, facilisis nulla at, posuere lorem. Maecenas blandit, lectus nec varius bibendum, nibh risus posuere turpis, id pretium justo elit vitae ligula. Sed risus ante, congue quis libero consequat, laoreet convallis diam.

Aenean sagittis ex vel semper ullamcorper. Donec mattis, ipsum tincidunt aliquet vehicula, elit tellus porta mi, a convallis quam orci ac lectus. Proin aliquam nulla in erat mattis placerat. Aliquam ligula sem, egestas ac turpis vitae, facilisis iaculis mauris. Donec ac egestas urna, ac iaculis orci. Integer urna magna, eleifend sed nunc vitae, commodo lobortis massa. Aenean ultrices pulvinar dui, non blandit lorem pretium quis. Praesent in molestie purus, vestibulum interdum quam. Pellentesque auctor erat non mauris fringilla eleifend.

Etiam blandit vel leo nec pulvinar. Phasellus elementum facilisis mi et egestas. Praesent finibus, elit vel venenatis sodales, turpis nibh tincidunt turpis, eu venenatis urna tortor at massa. Proin iaculis ipsum ut elit maximus tincidunt. Suspendisse justo turpis, sollicitudin ut eros quis, dictum placerat nibh. Sed mattis ornare pulvinar. Cras lacus purus, interdum vitae commodo sollicitudin, suscipit eu quam. Mauris luctus laoreet metus at posuere. Etiam faucibus diam quis purus vulputate, nec blandit lorem bibendum.

Aliquam nisl neque, vulputate eu arcu id, elementum dictum sapien. Aliquam aliquam, mauris eget vestibulum accumsan, metus tellus vulputate urna, nec volutpat felis turpis ac nulla. Morbi pretium magna bibendum eros ultricies lobortis. Vestibulum euismod vitae nibh in posuere. Vivamus in iaculis mi. Pellentesque iaculis ex nec tellus pulvinar interdum. Integer a tincidunt risus, eu faucibus mi. Vivamus posuere sapien eu orci scelerisque rutrum at eu leo. Nullam consectetur est eu justo congue commodo. Vestibulum ac finibus velit. Donec faucibus nulla at risus rhoncus, a vulputate magna pulvinar. Aliquam condimentum rhoncus lacus sed hendrerit.

Morbi non hendrerit nisl, eu fringilla erat. Praesent ac dolor sit amet libero tempus porttitor. Cras vel sem elementum, venenatis ipsum vel, molestie tellus. Aliquam erat volutpat. Maecenas malesuada urna nec diam sodales pharetra. Aliquam non lobortis metus. Donec eleifend mollis eros in condimentum. Suspendisse sagittis consequat justo, vitae tincidunt orci luctus vel. Ut lobortis tincidunt libero. Sed dignissim lorem sit amet nibh aliquam, pharetra pulvinar justo consequat. Suspendisse sed dictum massa. Ut fermentum, dolor a fringilla bibendum, lorem ligula scelerisque turpis, in porta justo neque non lectus. Suspendisse pellentesque risus sit amet ligula pretium condimentum. Fusce odio tortor, pulvinar in dapibus nec, pharetra eget nisi. Suspendisse luctus eros eget mauris pretium blandit.

Nam vel fermentum nulla. Sed tincidunt tellus id mattis dapibus. Quisque ac congue libero, nec elementum nulla. Phasellus quam eros, congue eu lacinia a, interdum et eros. Aenean suscipit risus interdum mauris porttitor, vehicula auctor tellus molestie. Donec efficitur nisi eget ex interdum sollicitudin. Nunc ultricies maximus quam, at pulvinar eros volutpat quis. Nam venenatis mauris enim, sed malesuada tortor eleifend sit amet. Cras imperdiet convallis viverra. Proin purus nulla, bibendum in aliquam quis, sollicitudin a risus. Proin vehicula tincidunt tortor quis lacinia. Praesent tristique odio sed orci consequat, ut pulvinar mauris semper. Mauris felis mi, ultricies a dolor id, viverra laoreet orci. Nam ex mi, semper nec imperdiet sed, posuere et eros.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec scelerisque ipsum sed libero tempor, in vulputate ante sodales. Sed vehicula nulla non ante blandit, quis porttitor diam auctor. Nulla sodales risus ut dui vulputate, nec elementum sem volutpat. Quisque id blandit quam. Proin interdum quis lacus ac suscipit. Etiam a scelerisque sapien. Praesent cursus, mi eget dapibus hendrerit, nibh eros elementum lacus, sit amet congue dui nunc at dui. Phasellus tristique nulla ut tincidunt faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse efficitur congue purus, a viverra sapien tristique vel.

Vestibulum elementum pellentesque turpis. Phasellus id quam sit amet ex sodales malesuada. Morbi iaculis quis nibh vitae finibus. Nullam vitae luctus nisl, ac varius leo. Fusce sed quam eu enim volutpat blandit. Etiam ornare aliquam mi, eget porttitor magna euismod non. Curabitur porta vel metus ut mollis.

Aenean sit amet sagittis lacus. Quisque in dui commodo, rutrum massa tincidunt, hendrerit mauris. Maecenas sit amet nisl facilisis, interdum eros rhoncus, malesuada nisl. Aliquam condimentum erat dui, eget dignissim magna volutpat vitae. Mauris porttitor, risus ut auctor porttitor, sem nisl interdum nisi, ac tempus est enim in tortor. Sed rhoncus magna ac feugiat pharetra. Nulla scelerisque quis neque ut porttitor. Ut lacinia in ipsum sit amet lobortis. Aliquam eu justo vel leo facilisis tristique. Pellentesque cursus, lacus a rhoncus auctor, erat velit vehicula diam, et fermentum erat mauris fermentum turpis. Donec quam sapien, laoreet sodales sagittis ac, sodales vitae lectus. Donec vitae lorem rutrum, lobortis libero maximus, condimentum sapien. Pellentesque mi lorem, rhoncus vel lacinia a, venenatis et velit.

Curabitur malesuada ante vel maximus luctus. Etiam dui lectus, condimentum eget lobortis eget, eleifend pellentesque ligula. Nam eu pharetra urna, sit amet facilisis turpis. Mauris tincidunt vestibulum turpis nec suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque egestas commodo finibus. Donec pellentesque nec libero et imperdiet. Cras cursus purus ut libero pretium vulputate. Mauris non arcu purus. Donec sollicitudin dignissim massa ac tincidunt. Donec non consectetur turpis, et venenatis dui.

Nam mattis urna dolor, a varius sem tempor a. Vivamus porttitor dignissim metus vel ultrices. Integer ac justo vel nisl consequat efficitur. Maecenas sit amet hendrerit elit. Suspendisse lobortis semper mauris id convallis. Duis nibh dui, lacinia a turpis sed, interdum aliquam ex. Praesent tempor rhoncus nibh vel dictum. Quisque feugiat mi sit amet nunc fermentum pellentesque. Ut porta lacinia erat eu pulvinar. Nulla vestibulum fermentum felis, eu ultricies lectus. Ut eget lobortis sapien. Aenean consectetur in nisl interdum mattis. Sed a ipsum pharetra, congue augue a, accumsan ex. Quisque luctus sapien non tincidunt vulputate.

Aenean auctor consectetur urna et rhoncus. Vivamus mattis tortor at massa porta, in auctor quam porttitor. Nulla facilisi. Sed auctor ipsum tortor, quis hendrerit risus convallis eget. Vivamus a mollis nulla, at fringilla risus. In a cursus dui, nec vehicula elit. Donec in sodales ante, quis gravida est. Sed interdum mi non ornare lacinia. Cras placerat cursus dolor nec euismod. Nulla vel velit quis nibh aliquam eleifend. Cras mattis vitae erat nec gravida. Vestibulum luctus sagittis nibh, a pretium neque dictum eget. Quisque vitae consequat dui. Donec libero eros, pharetra sit amet sapien id, euismod gravida mi.

Duis tristique nisi id urna feugiat, sed aliquet nulla imperdiet. Ut quis felis finibus, lobortis nunc eu, sodales risus. Fusce at euismod risus. Nunc pulvinar libero volutpat, mattis eros facilisis, mollis nibh. Maecenas augue nunc, mollis sit amet volutpat et, interdum eu augue. Etiam porttitor tortor sem, vitae hendrerit nulla lobortis ut. In non sollicitudin eros. Cras bibendum lorem id odio sollicitudin euismod. Aliquam ullamcorper purus at turpis accumsan blandit. Donec at interdum arcu. Nam fermentum est lectus, vel tincidunt purus sollicitudin a. Aliquam vel orci massa.

Fusce fringilla et justo et interdum. Fusce molestie, tellus vitae elementum lobortis, enim augue condimentum nulla, a semper enim quam in dui. Vestibulum a pharetra felis. Proin eu sollicitudin leo. In vestibulum rhoncus augue, non ultrices turpis. Donec maximus neque semper tellus condimentum, in aliquam dui posuere. Sed ultrices nisl purus, quis sollicitudin eros laoreet quis. Praesent nunc nisl, varius at suscipit sed, tristique at neque.

Quisque aliquam tincidunt augue vitae rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin eu luctus erat. Nullam auctor, purus a eleifend efficitur, metus ligula accumsan quam, quis bibendum enim lacus quis neque. Maecenas lacinia ipsum molestie felis accumsan, in dignissim purus aliquet. Nunc turpis massa, ultricies in lacinia ut, luctus ut felis. Morbi magna nisi, sodales in arcu sit amet, efficitur mattis velit. Ut scelerisque enim nibh, vel pretium urna varius vel. Cras vitae accumsan nunc, ut iaculis tortor. Nam vitae laoreet orci, sit amet rutrum mi. Nunc blandit purus eu hendrerit tempor. Vestibulum tincidunt pharetra purus ut sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla sed laoreet urna, sit amet commodo erat. Fusce euismod justo erat, et placerat odio accumsan finibus. Proin pellentesque ligula ut nibh condimentum, sed ornare justo faucibus. Fusce consectetur sapien nec dui varius, vel pharetra felis molestie. Duis accumsan odio metus, ut varius orci finibus nec. Sed non ipsum vitae est aliquet mollis. Pellentesque facilisis feugiat suscipit.

Mauris ut enim sit amet metus bibendum finibus. Suspendisse iaculis, tellus maximus placerat elementum, libero turpis fermentum dolor, ut lacinia sapien ipsum a nulla. Etiam sollicitudin dictum dolor, ac congue sem pulvinar nec. Ut egestas urna non neque volutpat egestas. Integer porta vel orci volutpat tincidunt. In egestas fringilla ipsum ac pharetra. Fusce justo dui, dignissim sed leo at, tincidunt finibus magna. Pellentesque vel nunc risus. Praesent lacinia blandit convallis. Cras eget magna metus. Maecenas fringilla dolor eu quam dictum consequat. Donec pellentesque eleifend velit, a commodo dui faucibus eu. Phasellus pretium nulla ipsum, et interdum magna interdum et. Mauris a sem ullamcorper, consectetur quam accumsan, porttitor eros.

Praesent facilisis, ipsum ac tincidunt auctor, tellus ipsum convallis magna, vel maximus sem lorem et tortor. Sed elit diam, faucibus sed turpis eget, commodo facilisis nunc. Vestibulum vitae arcu tristique, varius libero molestie, sollicitudin mi. In tincidunt nisl in eros imperdiet faucibus. Cras ex ipsum, vehicula eget neque eget, viverra pellentesque erat. Suspendisse vitae tristique dolor. Nulla ornare imperdiet metus id mollis. Fusce ligula ex, aliquam sed purus quis, venenatis volutpat lectus. Sed iaculis ante sit amet massa consequat interdum. Ut feugiat risus sit amet commodo euismod. Sed tristique quam sit amet lacinia cursus. Donec faucibus, erat a dapibus rhoncus, orci est interdum ex, sit amet semper massa quam et lectus.

Suspendisse mollis turpis aliquam felis efficitur, eu ultrices tellus suscipit. Aenean at congue erat, vel ultricies eros. Quisque hendrerit arcu ut est aliquet, et vehicula lectus ullamcorper. Pellentesque posuere neque nec auctor scelerisque. Phasellus rhoncus odio ac nisl ornare condimentum. Nam nec arcu porttitor tellus faucibus malesuada id a est. Vivamus id facilisis ante. Proin quis risus ipsum. In sed nibh at nisl tempus interdum. Ut sit amet malesuada nisl, id pharetra metus. Nulla lorem velit, euismod nec dictum at, porttitor ac erat. Aliquam est leo, elementum nec ultricies nec, interdum sed libero. Quisque mattis placerat scelerisque. Praesent vulputate sit amet felis non tristique.

Phasellus odio ex, ultricies et tincidunt sit amet, auctor id felis. Fusce facilisis nibh risus, eget placerat nunc pellentesque vel. Morbi cursus metus eu arcu viverra rutrum. Nulla eget dolor blandit, pulvinar sem aliquet, hendrerit purus. Fusce sodales venenatis posuere. Cras egestas placerat odio non scelerisque. Praesent tincidunt maximus semper. Vivamus eget libero massa. Cras auctor orci sed nibh sagittis ultrices. Curabitur leo lacus, suscipit ac pharetra vel, euismod eu turpis. Aenean quis justo efficitur, mattis nisl sed, mollis lacus. Integer feugiat non metus vitae faucibus. Morbi sem massa, pretium id risus a, congue volutpat mi. Vivamus lacinia enim lorem, id malesuada ante vehicula non. Praesent ac urna quis justo malesuada euismod.

Integer sed ligula id purus dictum tempus eu non ex. Phasellus tincidunt lectus in imperdiet porttitor. Integer ligula dolor, porttitor et congue vitae, elementum eget sem. Proin a libero in enim efficitur mollis. Proin molestie metus dolor, in fermentum massa condimentum at. Cras eget auctor odio, a luctus sapien. Nulla in hendrerit leo, sed venenatis augue. Proin mollis vestibulum magna. Nulla dapibus lacus nec condimentum maximus. Phasellus id efficitur enim. Vivamus molestie mauris at condimentum elementum. Maecenas ultrices mauris quis tincidunt viverra. Ut eget ultricies ligula. Nulla id fermentum nisl, in ultrices velit.

Nunc blandit tellus sed est auctor condimentum. Integer fringilla aliquam libero, id sagittis ipsum lacinia sit amet. Donec sit amet nunc felis. Vestibulum at commodo arcu, a malesuada est. Aenean ultrices, mauris in pellentesque posuere, mi orci fermentum justo, vitae rutrum neque erat a nisi. In sed urna quis sem egestas faucibus ut quis ipsum. Quisque porta lectus sit amet urna ultricies iaculis.

Praesent ultrices odio nisl, eu consequat dolor sollicitudin nec. Suspendisse dignissim lobortis nulla nec molestie. Duis in diam sed est dignissim faucibus vitae in metus. Phasellus lacinia urna eros, vitae vulputate sem fermentum eget. Suspendisse et efficitur dolor. Mauris faucibus sodales felis eu luctus. Cras non mattis lacus. Proin in lobortis sapien. Nulla at augue sed est congue sollicitudin.

Nunc nisi lorem, dapibus id tincidunt quis, sollicitudin sit amet justo. In mollis orci pretium aliquam fermentum. Fusce sodales mi eget tellus posuere ullamcorper. Sed varius sagittis elit, in feugiat odio maximus sed. Cras eleifend massa sit amet mi suscipit, vel laoreet leo pretium. Quisque neque erat, mollis eget elementum non, blandit in lectus. Sed dignissim felis ac felis convallis elementum molestie id lectus. Nullam fermentum lorem mi, in placerat quam mollis vitae. Pellentesque ultrices, nibh at sagittis molestie, augue mauris bibendum dui, ut ultricies lorem magna eu massa. Quisque quis purus eu nisi rhoncus tempor. Donec eget fringilla massa. Vivamus sed varius elit. Aenean egestas tellus eget magna dapibus hendrerit. Nunc vel leo eu purus tempus mollis.

Praesent sagittis eget lectus non vestibulum. Fusce id elit nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec id malesuada justo, non ornare felis. Nulla ultricies lorem ex, et accumsan ex volutpat sodales. Pellentesque venenatis neque in hendrerit blandit. Donec dapibus est fermentum lacus fringilla, ut volutpat tellus consectetur. Maecenas id semper tortor. In pellentesque aliquet elit, non vulputate augue mollis fermentum. Nullam posuere eget elit a placerat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Phasellus vestibulum tristique quam a faucibus. Proin sit amet sem et leo posuere efficitur vitae et ante. Nullam congue nisl augue, in ultricies orci tempor quis. Aliquam erat volutpat. In luctus, sapien at venenatis fermentum, lorem urna ultrices elit, ac volutpat metus purus eu turpis. Phasellus semper cursus mi, vitae tempor est accumsan at. Integer accumsan nec augue vitae viverra. Sed tempus cursus enim non dapibus. In commodo neque in ultricies semper. Proin auctor lacinia eros, ut tempor lectus pulvinar quis. Ut fermentum vulputate pellentesque. Duis tempor ante quis metus consectetur maximus. Curabitur a tincidunt enim.

Vestibulum dictum, urna a fringilla imperdiet, tortor arcu mattis odio, et efficitur dui neque ac mauris. Vestibulum auctor risus lacus. Integer elementum erat nisl, id vehicula enim mattis in. Vestibulum consequat neque ante, in sodales magna pulvinar in. Vivamus interdum eros non magna aliquam tristique. Ut aliquam congue ante in gravida. Sed eu turpis sollicitudin, suscipit ligula id, commodo tellus. Aliquam eu sapien vitae augue gravida egestas nec sit amet turpis. Curabitur vulputate vulputate dui, et facilisis lectus tincidunt nec. Integer tristique vitae quam condimentum maximus. Ut ultricies convallis nisl eu elementum.

Curabitur non nisi lectus. Aliquam finibus lorem id dui molestie, sed ullamcorper quam lobortis. Maecenas in gravida urna. Pellentesque consequat risus vel nibh tempus facilisis. Etiam auctor lacinia lacus vitae vulputate. Etiam bibendum arcu at ipsum elementum, id sodales nunc convallis. Phasellus elementum mi non sapien blandit suscipit. Integer accumsan et justo nec mattis. Vestibulum quis erat viverra, condimentum enim eget, auctor tortor. Nunc ac mauris sit amet urna pellentesque malesuada. Fusce urna justo, finibus eget blandit eget, volutpat eu nisi. In nisi nunc, sodales sit amet tempor eu, feugiat feugiat tellus. Nulla felis purus, gravida eu iaculis in, interdum id purus. In hac habitasse platea dictumst. Aenean consequat, quam tincidunt sodales lacinia, ex dui faucibus massa, ut porta dolor justo et mi.

Donec a massa porta, vehicula diam et, pulvinar tortor. Duis tincidunt, nibh ut pharetra hendrerit, est orci egestas urna, et sollicitudin massa lacus aliquam ex. Curabitur in quam sed elit scelerisque pretium nec rhoncus nulla. In a ligula.  
  """

  xml('root').txt(text)