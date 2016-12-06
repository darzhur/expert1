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
                 {name: 'Wassily-Kandinsky-01.jpg', path: 'pictures/Wassily-Kandinsky-01.jpg'},
                 {name: 'Wassily-Kandinsky-02.jpg', path: 'pictures/Wassily-Kandinsky-02.jpg'}
             ])