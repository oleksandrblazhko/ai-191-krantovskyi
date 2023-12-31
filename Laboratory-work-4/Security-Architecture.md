# Design (Дизайн) - Security architecture (Архітектура безпеки)
## Огляд практики безпеки
Практика архітектури безпеки (SA) зосереджена на безпеці, пов’язаній з
компонентами та технологіями, з якими ви маєте справу під час архітектурного проектування
вашого програмного забезпечення. Дизайн архітектури безпеки розглядає вибір і
склад компонентів, які складають основу вашого рішення,
зосереджуючись на його захищених властивостях. Технологічний менеджмент дивиться на
безпеку допоміжних технологій, що використовуються під час розробки, розгортання
та операції, такі як стеки розробки та інструменти, інструменти розгортання,
операційні системи та інструменти.

## Огляд потоків
### Потік А - Архітектурний дизайн
Дизайн архітектури програмного забезпечення може значно вплинути на безпеку
положення програмного забезпечення та використання належної практики безпеки покращать
загальний дизайн.

#### Рівень зрілості 1

**Вигода**

Набори базових принципів безпеки, доступні командам продуктів

**Діяльність**

Під час проектування технічний персонал команди продукту використовує короткий контрольний список
принципів безпеки. Як правило, принципи безпеки включають глибокий захист,
захист найслабшої ланки, використання безпечних параметрів за замовчуванням, простота дизайну
функціональністі безпеки, безпечний збій, баланс безпеки та зручності використання, працює
з найменшими привілеями, уникнення безпеки через невідомість тощо.

Для периметральних інтерфейсів команда розглядає кожен принцип у контексті
загальної системи та визначає функції, які можна додати для посилення безпеки
на кожному такому інтерфейсі. Обмежте їх так, щоб вони приймали лише невелику кількість
додаткових зусиль, що перевищують звичайні витрати на реалізацію функціональних
вимог. Зверніть увагу на все, що дорожче, і заплануйте це для майбутніх випусків.

#### Рівень зрілості 2

**Вигода**

Багаторазові послуги безпеки, доступні для команд продукту

**Діяльність**

Визначте спільну інфраструктуру або служби з функціями безпеки. Ці
зазвичай включають служби єдиного входу, контроль доступу або дозволи
служби, служби журналювання та моніторингу або брандмауер на рівні програми.
Зберіть і оцініть багаторазові системи, щоб скласти список таких ресурсів і
класифікуйте їх за механізмом безпеки, який вони виконують. Розглянемо кожен ресурс
з точки зору того, чому команда продукту хоче інтегруватися з ним, тобто
переваги використання спільного ресурсу.

#### Рівень зрілості 3

**Вигода**

Повна прозорість якості та зручності рішення централізованої безпеки

**Діяльність**

Створіть набір еталонних архітектур, які вибирають і поєднують перевірений набір
компонентів безпеки для забезпечення належного проектування безпеки.
Платформи мають переваги з точки зору скорочення аудиту та безпеки
переглядів, підвищення ефективності розробки та зниження витрат на обслуговування.
Постійно підтримувати та вдосконалювати еталонну архітектуру
на основі нових ідей в організації та всередині спільноти. Мати
архітекторів, старших розробників та інші технічні зацікавлені сторони
проектування та створення еталонних платформ. Після створення команди підтримують
постійну підтримка та оновлення.

### Потік B - Управління технологіями
Технології та фреймворки є наріжним каменем будь-якого програмного рішення.
Необхідно розглянути їх властивості безпеки, щоб забезпечити відповідність
рівень безпеки та передбачити будь-які потенційні проблеми.

#### Рівень зрілості 1

**Вигода**

Прозорість технологій, які створюють ризик безпеки

**Діяльність**

Люди часто йдуть шляхом найменшого опору в розробці, розгортанні або
експлуатація програмного рішення. Нові технології часто включають, коли вони
можуть полегшити або пришвидшити зусилля або забезпечити краще масштабування рішення.
Однак ці нові технології можуть створити нові ризики для
організації, якою вам потрібно керувати.

Визначте найважливіші технології, фреймворки, інструменти та інтеграції
використовується для кожної програми. Використовуйте знання архітектора для навчання
середовище розробки та роботи, а також артефакти. Потім
оцінити їх якість безпеки та зробити важливі висновки
керований.

#### Рівень зрілості 2

**Вигода**
Технології з відповідним рівнем безпеки, доступні командам продуктів

**Діяльність**

Визначте технології, фреймворки та інструменти, які широко використовуються
в проектах програмного забезпечення в організації, за допомогою яких ви зосереджуєтеся на захопленні високого
рівня технологій.

Створіть список і поширте його в організації-розробнику як
рекомендовані технології. Вибираючи їх, враховуйте історію інцидентів,
досвід реагування на вразливості, відповідність функціональності
для організації, надмірна складність у використанні сторонніх
компонентів і достатні знання всередині організації.

#### Рівень зрілості 3

**Вигода**

Обмежена площа атаки завдяки використанню перевірених технологій

**Діяльність**

Для всіх власних розробок (власних або придбаних), накладайте та контролюйте
використання стандартизованої технології. Залежно від вашої організації
запровадити ці обмеження в інструменти збірки або розгортання за допомогою
фактичного автоматизованого аналізу артефактів програми (наприклад, вихідний код,
файли конфігурації або артефакти розгортання), або періодично переглядайте, зосереджуючись на
правильному використанні цих рамок.
