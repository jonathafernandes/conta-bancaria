require_relative 'cliente'

class Conta
  attr_reader :numero, :titular, :saldo #Método para definir os argumentos somente como leitura
  attr_writer :saldo # #Método para definir os argumentos para alterar

  # attr_accessor: :saldo #Método para definir os armentos para ler e alterar
  
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo = 'corrente' #Essa variáverel não recebe nenhum argumento no método pois não vai ser modificada
  end

  def sacar(valor)
    if saldo >= valor
      self.saldo -= valor
    else
      puts "Saldo indisponível!"
    end
  end

  def depositar(conta_destino, valor)
    if saldo -= valor
      sacar(valor)
      conta_destino.depositar(valor)
    else
      puts "Saldo indisponível!"
    end
  end
end