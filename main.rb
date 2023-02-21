puts "Bem vindo ao Cookbook, sua rede social de receitas!"

receitas = []

while (true) do 
  puts "Digite o nome da receita"
  nome = gets.chomp()
  
  receitas << nome
  
  puts "Receita de #{nome} cadastrada com   sucesso!"
end