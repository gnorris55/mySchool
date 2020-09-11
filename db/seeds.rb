
User.destroy_all
User.create(email: ENV["EMAIL"], password: ENV["PASSWORD"])
User.create(email: "bobman@yahoo.com", password: "123Cabbage")