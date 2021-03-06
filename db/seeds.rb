require 'net/http'

# build user
role = Role.first
user = role.users.build( email: "dev@inventae.com.br", password: "q1w2e3r4", password_confirmation: "q1w2e3r4" )
raise Exception unless user.save
person = Person.new( user: user, name: "Desenvolvimento" )
raise Exception unless person.save

# build counties
uri = URI( "https://raw.github.com/fmauz/utils/master/seed_data/cidades.txt" )
cities = Net::HTTP.get(uri).split("\n").map{|a| a.split("|") }
cities.each{|a| County.create( name: a.last, code: a[1], cnpj: "00.000.000/0000-00" ) }


# Section.all.each do |section|
#   questions = section.questions.all
#   questions.each do |question|
#     question.order = questions.index( question )
#     question.save
#   end
# end
