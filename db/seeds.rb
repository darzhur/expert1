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
                 {name: 'Композиция VIII', file: 'pictures/kandinsky/1.jpg'},
                 {name: 'Композиция IV', file: 'pictures/kandinsky/2.jpg'},
                 {name: 'Желто-красно-синий', file: 'pictures/kandinsky/3.jpg'},
                 {name: 'Зимний пейзаж', file: 'pictures/kandinsky/4.jpg'},
                 {name: 'Вид Мурнау', file: 'pictures/kandinsky/5.jpg'},
                 {name: 'Гималаи. Розовые горы', file: 'pictures/rerich/1.jpg'},
                 {name: 'Заморские гости', file: 'pictures/rerich/2.jpg'},
                 {name: 'Град обречённый', file: 'pictures/rerich/3.jpg'},
                 {name: 'Странник Светлого Града', file: 'pictures/rerich/4.jpg'},
                 {name: 'Звезда утра', file: 'pictures/rerich/5.jpg'},
                 {name: 'Звёздная ночь', file: 'pictures/van-gog/1.jpg'},
                 {name: 'Сеятель', file: 'pictures/van-gog/2.jpg'},
                 {name: 'Подсолнухи', file: 'pictures/van-gog/3.jpg'},
                 {name: 'Лодки в Сент-Мари', file: 'pictures/van-gog/4.jpg'},
                 {name: 'Ночная терраса кафе', file: 'pictures/van-gog/5.jpg'}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
                 {name: '-'}, #Нет темы
                 {name: 'Лучшая картина Кандинского'}

             ])