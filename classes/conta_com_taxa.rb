class ContaComTaxa < ContaBancaria
    TAXA_DE_SAQUE = 2
    #TAXA_DE_SAQUE é uma constante

    def transferir(outra_conta, valor)
        super(outra_conta, valor)
        #vai executar a tramsferencia como era antes.
        debitar(TAXA_DE_SAQUE)
    end
end