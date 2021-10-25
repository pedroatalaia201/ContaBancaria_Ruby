class ContaBancaria
   #get-set
    def initialize(nome, valor)
        @conta = nome
        @valor = valor
    end
    
    def transferir(outra_conta, valor)
        if mostrar_saldo() >= valor
            debitar(valor)
            outra_conta.depositar(valor) # depositar está em outro obj,no caso outra_conta
        else
            raise "Saldo insulficiente"
            #o raise lança uma exception no ruby.
        end

    end

    def mostrar_saldo
        @valor
    end

    private def debitar(valor)
        @valor -= valor
    end

    protected
    def depositar(valor)
        @valor += valor 
    end
end


