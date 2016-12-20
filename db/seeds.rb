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
User.create([{ name: 'Dim' , email: 'dim@mail.ru' },
            { name: 'Yuri', email: 'yuri@mail.ru' },
            { name: 'Roma', email: 'roma@mail.ru' }])

#удаляем старые данные
Image.delete_all
#сбрасываем счетчик
Image.reset_pk_sequence
Image.create([
                 {name: 'Композиция VIII', file: 'kandinsky/1.jpg', theme_id: 2},
                 {name: 'Композиция IV', file: 'kandinsky/2.jpg', theme_id: 2},
                 {name: 'Желто-красно-синий', file: 'kandinsky/3.jpg', theme_id: 2},
                 {name: 'Зимний пейзаж', file: 'kandinsky/4.jpg', theme_id: 2},
                 {name: 'Вид Мурнау', file: 'kandinsky/5.jpg', theme_id: 2},
                 {name: 'Гималаи. Розовые горы', file: 'rerich/1.jpg', theme_id: 3},
                 {name: 'Заморские гости', file: 'rerich/2.jpg', theme_id: 3},
                 {name: 'Град обречённый', file: 'rerich/3.jpg', theme_id: 3},
                 {name: 'Странник Светлого Града', file: 'rerich/4.jpg', theme_id: 3},
                 {name: 'Звезда утра', file: 'rerich/5.jpg', theme_id: 3},
                 {name: 'Звёздная ночь', file: 'van-gog/1.jpg', theme_id: 4},
                 {name: 'Сеятель', file: 'van-gog/2.jpg', theme_id: 4},
                 {name: 'Подсолнухи', file: 'van-gog/3.jpg', theme_id: 4},
                 {name: 'Лодки в Сент-Мари', file: 'van-gog/4.jpg', theme_id: 4},
                 {name: 'Ночная терраса кафе', file: 'van-gog/5.jpg', theme_id: 4}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
                 {name: '-'},  # 1
                 {name: 'Лучшая картина Кандинского'}, # 2
                 {name: 'Лучшая картина Рериха'}, # 3
                 {name: 'Лучшая картина Ван Гога'} # 4
             ])