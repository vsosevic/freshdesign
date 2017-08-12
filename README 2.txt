Test #2:

MySQL 5.6+

There is a MySQL database with three tables: user, user_profile and user_token.
It is necessary to create a single request, as a result of which the data will be received in the specified form.

Field order:
  Id is the user ID,
  Email - the postal address of the user,
  Name is the name of the user,
  Patronymic - the patronymic of the user,
  Surname - the surname of the user,
  Money - the amount of money on the user's account,
  Tokens - number of user tokens

You only need to display active users - is_active = 1

Query result:
 =============================================================================================
 | id   | email               | name      | patronymic   | surname       | money    | tokens |
 ---------------------------------------------------------------------------------------------
 | 1    | vitaliy@yandex.ru   | Виталий   | Виталиевич   | Виталенко     | 100,00   | 1      |
 | 3    | petya@gmail.com     | Петр      | Петрович     | Петров        | 300,00   | 3      |
 | 4    | andrew@gmail.com    | Андрей    | Андреевич    | Андреевский   | 400,00   | 4      |
 =============================================================================================
