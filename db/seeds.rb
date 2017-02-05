# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#удаляем старые данные
User.delete_all
#сбрасываем счетчик
User.reset_pk_sequence
User.create([{ name: 'Sheldon' , email: 'sheldon@mail.ru', password: "sheldon", password_confirmation: "sheldon"},
            { name: 'Leonard', email: 'leonard@mail.ru', password: "leonard", password_confirmation: "leonard"},
            { name: 'Qwerty', email: 'qwerty@mail.ru', password: "qwerty", password_confirmation: "qwerty"}])

#удаляем старые данные
Image.delete_all
#сбрасываем счетчик
Image.reset_pk_sequence
Image.create([
                 {name: 'Композиция VIII', file: 'kandinsky/1.jpg', theme_id: 2, ave_value: 0},
                 {name: 'Композиция IV', file: 'kandinsky/2.jpg', theme_id: 2, ave_value: 0},
                 {name: 'Желто-красно-синий', file: 'kandinsky/3.jpg', theme_id: 2, ave_value: 0},
                 {name: 'Зимний пейзаж', file: 'kandinsky/4.jpg', theme_id: 2, ave_value: 0},
                 {name: 'Вид Мурнау', file: 'kandinsky/5.jpg', theme_id: 2, ave_value: 0},
                 {name: 'Гималаи. Розовые горы', file: 'rerich/1.jpg', theme_id: 3, ave_value: 0},
                 {name: 'Заморские гости', file: 'rerich/2.jpg', theme_id: 3, ave_value: 0},
                 {name: 'Град обречённый', file: 'rerich/3.jpg', theme_id: 3, ave_value: 0},
                 {name: 'Странник Светлого Града', file: 'rerich/4.jpg', theme_id: 3, ave_value: 0},
                 {name: 'Звезда утра', file: 'rerich/5.jpg', theme_id: 3, ave_value: 0},
                 {name: 'Звёздная ночь', file: 'van_gog/1.jpg', theme_id: 4, ave_value: 0},
                 {name: 'Сеятель', file: 'van_gog/2.jpg', theme_id: 4, ave_value: 0},
                 {name: 'Подсолнухи', file: 'van_gog/3.jpg', theme_id: 4, ave_value: 0},
                 {name: 'Лодки в Сент-Мари', file: 'van_gog/4.jpg', theme_id: 4, ave_value: 0},
                 {name: 'Ночная терраса кафе', file: 'van_gog/5.jpg', theme_id: 4, ave_value: 0}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
                 {name: '-----'},  # 1
                 {name: 'Лучшая картина Кандинского'}, # 2
                 {name: 'Лучшая картина Рериха'}, # 3
                 {name: 'Лучшая картина Ван Гога'} # 4
             ])