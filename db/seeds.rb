
User.destroy_all
User.create(email: ENV["EMAIL"], password: ENV["PASSWORD"])