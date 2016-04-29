class Seeder

  def self.seed!
    self.user
  end

  def self.user
  User.create(name: "grabben",
              email:"grabben@gmail.com",
              password: "grabben",
              username: "grabben")
  end
end