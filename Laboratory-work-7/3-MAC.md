1. Створіть у БД структури даних, необхідні для роботи повноважного керування
доступом.

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(1).png)

2. Додайте до таблиці з даними стовпчик, який буде зберігати мітки конфіденційності.
Визначте для кожного рядка таблиці мітки конфіденційності, які будуть різнитися (для
кожного рядка своя мітка).
3. Визначте для користувача його рівень доступу.

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(2).png)

4. Створіть нову схему даних, назва якої співпадає з назвою користувача.
5. Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка
забезпечує SELECT-правила повноважного керування доступом для користувача.

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(3).png)

6. Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом
для користувача.

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(4).png)

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(5).png)

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(6).png)

7. Встановіть з’єднання з СКБД від імені нового користувача.
8. Від імені нового користувача перевірте роботу механізму повноважного керування,
виконавши операції SELECT, INSERT, UPDATE, DELETE

![alt-text](https://github.com/oleksandrblazhko/ai-191-krantovskyi/blob/laboratory-work-7/Laboratory-work-7/3-MAC(7).png)
