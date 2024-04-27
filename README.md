# <i style="font-style:bold">Rustogram</i>
1) git clone проекта
2) наличие composer, а также node
3) в корне пишем composer install
4) cd react (переходим в папку с пользовательской частью)
5) npm i --force (так как есть библиотека со старой версией)
6) npm run dev
7) открываем ещё один терминал
8) cd ..
9) запускаем базу данных mysql
10) в файле .env (если его нет дублируем .env.example и убираем .example) заполняем туда всё что связано с нашей базой данных host,port,username,password,database
11) в файле .env в папке react (если его нет дублируем .env.example и убираем .example) заполняем там самую первую переменную - VITE_API_BASE_URL нашей ссылкой до сервера (будет отображаться в терминале при его запуске)
12) php artisan migrate
13) php artisan serve