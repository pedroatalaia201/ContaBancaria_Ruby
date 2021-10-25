require "./classes/conta_bancaria"
require "./classes/conta_com_taxa"

conta1 = ContaComTaxa.new("conta1", 100)
conta2 = ContaBancaria.new("conta2", 100)

puts "Inicio"
p conta1.mostrar_saldo()
p conta2.mostrar_saldo()

conta1.transferir(conta2, 50)

puts "após a primeira transferencia"
p conta1.mostrar_saldo()
p conta2.mostrar_saldo()

#try-catch
begin
    conta1.transferir(conta2, 100)
rescue StandardError => exception
    p "Não foi possivel realizar a transferencia: #{exception.message}" 
end

puts "após a exceção:"
p conta1.mostrar_saldo()
p conta2.mostrar_saldo()