# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Comment.delete_all
Restaurant.delete_all
User.delete_all

user1 = User.create(email:'k@k.com', password:'1234',username:'k',admin:true);
user2 = User.create(email:'m@m.com', password:'1234',username:'m',admin:false);
user3 = User.create(email:'ch@ch.com', password:'1234',username:'ch',admin:false);

rest1 = Restaurant.create(title:'Cinc sentits',description:'Molt elegant',User:user1,address:'carrer 45',telephone:611223344);
rest2 = Restaurant.create(title:'Divinum',description:'Gran varietat',User:user2,address:'carrer 22',telephone:644332211);

comment1 = Comment.create(title:'be',text:'tot molt correcte',score:'8',User:user1,Restaurant:rest1);
comment2 = Comment.create(title:'malament',text:'poca calitat',score:'1',User:user2,Restaurant:rest2);
comment3 = Comment.create(title:'gran eleccio',text:'excelent',score:'10',User:user3,Restaurant:rest1);