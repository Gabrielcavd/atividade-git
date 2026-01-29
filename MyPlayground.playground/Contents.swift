import UIKit

var greeting = "Hello, playground"

func loginScreen() -> String {
    return "Eu sou a tela de login"
}

func registerScreen() -> String {
    return "Eu sou a tela de registro"
}

func homeScreen() -> String {
    return "Eu sou a tela de home"
}

loginScreen()
registerScreen()
homeScreen()

// 1- Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"

func verifyApprove(nota1: Double, nota2: Double) -> String {
    var media = (nota1 + nota2) / 2
    if media >= 7 {
        return "Aluno aprovado"
    } else {
        return "Aluno reprovado"
    }
}

// 2- Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.
// Dica: return total * 0.9 (isso significa o valor com 10% de desconto)

func desconto(total: Double) -> Double {
    if total < 100.0 {
        return total * 0.9
    } else if total <= 200.0 {
        return total * 0.85
    } else {
        return total * 0.8
    }
}

print(desconto(total: 200))

// 3- Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO", se for verde, retorne "SIGA EM FRENTE", se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semaforo(sinal: String) -> String {
    var formattedSinal = sinal.lowercased()

    if formattedSinal == "vermelho" {
        return "PARE"
    } else if formattedSinal == "amarelo" {
        return "ATENÇÃO"
    } else if formattedSinal == "verde" {
        return "SIGA EM FRENTE"
    }
    return "PARÂMETRO INVÁLIDO"
}

print(semaforo(sinal: "VERMELHO"))

// 4- Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
// seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"

func fds(eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}

fds(eFimDeSemana: true, tenhoDinheiro: false)

// 5- Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"

func bolaBanana(value1: Double, value2: Double) -> String {
    if value1 > value2 {
        return "Bola"
    } else {
        return "Banana"
    }
}

print(bolaBanana(value1: 4, value2: 2))

// 6- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print "Infelizmente você não foi convidado"

func casamento(foiConvidado: Bool) {
    foiConvidado ? print("Liberado para a festa") : print("Liberado para a festa")
}

// 7 - Implemente uma função que receba a idade de uma pessoa e determine se ela tem direito a entrada gratuita em um evento. Entrada gratuita é concedida para pessoas com menos de 5 anos ou mais de 65 anos.

func entradaGratuita(idade: Int) -> Bool {
    if idade < 5 || idade > 65 {
        return true
    }
    return false
}

print(entradaGratuita(idade: 65))

// 8 - Crie uma função que receba um score de crédito (tipo Int) de 0 a 1000 e retorne se a pessoa tem um "Bom crédito" (score acima de 700), "Crédito regular" (score entre 300 e 700) ou "Mau crédito" (abaixo de 300).

func avalisarScore(score: Int) -> String {
    if score < 300 {
        return "Mau crédito"
    } else if score <= 700 {
        return "Crédito regular"
    } else {
        return "Bom crédito"
    }
}

print(avalisarScore(score: 700))

// 9 - Implemente uma função que receba um dia da semana (tipo String) e retorne "Dia útil" se for de segunda a sexta, e "Final de semana" se for sábado ou domingo.

func isUtil(dia: String) -> String {
    let diaFormatted = dia.lowercased().folding(options: .diacriticInsensitive, locale: .current)

    switch diaFormatted {
    case "segunda", "terça", "quarta", "quinta", "sexta": return "Dia útil"
    case "sabado", "domingo": return "Final de semana"
    default: return "Dado invalido"
    }
}

print(isUtil(dia: "quartá"))

// 10 - Desenvolva uma função que receba uma senha (tipo String) e retorne "Senha fraca" se tiver menos de 6 caracteres, "Senha média" se tiver entre 6 e 8 caracteres, e "Senha forte" se tiver mais de 8 caracteres.
// Dica: Para descobrir a quantidade de caracteres de uma string, basta utilizar a propriedade .count
// var nome: String = "caio"
// print(nome.count) -> vai printar a quantidade de caracteres

func verificaSenha(senha: String) -> String {
    if senha.count < 6 {
        return "Senha fraca"
    } else if senha.count <= 8 {
        return "Senha media"
    } else {
        return "Senha forte"
    }
}

print(verificaSenha(senha: "Opa"))

// 11 - Crie uma função que receba a altura de uma pessoa em metros (tipo Double) e retorne "Baixa" se for menor que 1.60 metros, "Média" se for entre 1.60 e 1.85 metros, e "Alta" se for maior que 1.85 metros.

func estatura(altura: Double) -> String {
    if altura < 1.60 {
        return "Baixa"
    } else if altura <= 1.85 {
        return "Média"
    } else {
        return "Alta"
    }
}

// 12 - Crie uma função que receba a idade de uma pessoa (tipo Int) e o tempo de serviço em anos (tipo Int). Uma pessoa é elegível para promoção se tiver mais de 30 anos e mais de 5 anos de serviço. A função deve retornar "Promoção Elegível" se ambas as condições forem verdadeiras, e "Promoção Não Elegível" caso contrário.

func promo(idade: Int, tempServico: Int) -> String {
    if idade > 30 && tempServico > 5 {
        return "Promoção elegivel"
    } else {
        return "Promoção inelegivel"
    }
}

print(promo(idade: 30, tempServico: 6))

// 13 - Implemente uma função que receba a previsão de chuva (tipo Bool) e a temperatura (tipo Double). O evento ao ar livre deve ser cancelado se chover (true) ou se a temperatura for inferior a 15 graus. A função deve retornar "Evento Cancelado" se alguma das condições for verdadeira, e "Evento Confirmado" caso contrário.

func irEvento(vaiChover: Bool, temp: Double) -> String {
    if vaiChover || temp < 15.0 {
        return "Evento cancelado"
    }
    return "Evento confirmado"
}

print(irEvento(vaiChover: true, temp: 14))

// 14 - Desenvolva uma função que receba uma senha (tipo String) e a hora do dia (tipo Int, representando a hora). O acesso é permitido se a senha for "1234" e for entre as 9h e as 17h. A função deve retornar "Acesso Permitido" se ambas as condições forem verdadeiras, e "Acesso Negado" se qualquer uma das condições não for atendida.

func permitirAcesso(senha: String, hora: Int) -> String {
    if senha == "1234" && (hora >= 9 && hora <= 17) {
        return "Acesso permitido"
    }
    return "Acesso negado"
}

print(permitirAcesso(senha: "1234", hora: 7))

// Desafio 1 – Sistema de Pagamento
// 📌 Descrição
// Você está criando um sistema que processa diferentes formas de pagamento.
// Cada tipo de pagamento calcula a taxa de forma diferente.
// O que precisa ser feito
// Crie uma classe base chamada Pagamento
// Essa classe deve ter um método calcularValorFinal(valor: Double) -> Double
// Crie duas subclasses:
// CartaoCredito
// Pix
// Cada forma de pagamento deve calcular a taxa de forma diferente:
// Cartão de crédito: taxa de 5%
// Pix: sem taxa
// Crie um array do tipo [Pagamento]
// Percorra esse array e imprima o valor final de cada pagamento

// Regras
// Use override
// Não use if ou switch para decidir o tipo de pagamento

class Pagamento {
    var paymentValue: Double

    init(paymentValue: Double) {
        self.paymentValue = paymentValue
    }

    func calcularValorFinal() -> Double {
        return paymentValue
    }
}

class CartaoCredito: Pagamento {
    override func calcularValorFinal() -> Double {
        return paymentValue * 0.95
    }
}

class Pix: Pagamento {
    override func calcularValorFinal() -> Double {
        return paymentValue
    }
}

let pagamentos: [Pagamento] = [CartaoCredito(paymentValue: 100), Pix(paymentValue: 50), CartaoCredito(paymentValue: 34)]

for pagamento in pagamentos {
    print(pagamento.calcularValorFinal())
}

// Desafio 2 – Notificações do App
// Descrição
// Um app envia notificações por diferentes canais.
// Cada canal envia a mensagem de uma forma diferente.
// O que precisa ser feito

// Crie uma classe base Notificacao
// Crie o método enviar(mensagem: String)
// Crie pelo menos duas subclasses:
// Email
// SMS
// Cada classe deve sobrescrever o método enviar
// Armazene as notificações em um array [Notificacao]
// Envie a mesma mensagem para todas

// Regras
// O código que envia a mensagem não pode saber qual é o tipo da notificação

class Notificacao {
    func enviar(mensagem: String) {
        print(mensagem)
    }
}

class Email: Notificacao {
    override func enviar(mensagem: String) {
        print("Enviando email: \(mensagem)")
    }
}

class Sms: Notificacao {
    override func enviar(mensagem: String) {
        print("Enviando SMS: \(mensagem)")
    }
}

let notificacoes: [Notificacao] = [Email(), Sms(), Notificacao()]

for notificacao in notificacoes {
    notificacao.enviar(mensagem: "Breaking bad é bom demais")
}

// Desafio 3 – Cofre Digital

// Descrição
// Você precisa criar um cofre digital que protege um valor armazenado.
// 🎯 O que precisa ser feito
// Crie uma classe Cofre
// O valor armazenado deve ser private
// Crie métodos para:
// Depositar valor
// Sacar valor
// O saque só pode acontecer se houver saldo suficiente
// Crie um método para consultar o saldo

// ⚠️ Regras
// O saldo não pode ser acessado diretamente
// Todo acesso deve passar pelos métodos da classe

class Cofre {
    private var safeValue: Double

    init(value: Double) {
        safeValue = value
    }

    func depositar(value: Double) {
        safeValue += value
    }

    func sacar(value: Double) {
        if value > safeValue {
            print("Saldo insuficiente")
        } else {
            safeValue -= value
            print("Sucesso! seu saldo agora é de: \(safeValue)")
        }
    }

    func consulta() {
        print("Seu saldo é de: \(safeValue)")
    }
}

// Desafio 4 – Usuário Seguro
// Descrição
// Você está criando um sistema de usuários onde a senha precisa ser protegida.
// O que precisa ser feito
// Crie uma classe Usuario
// A senha deve ser private
// A senha só pode ser alterada por um método
// A nova senha deve ter pelo menos 6 caracteres
// Se não for válida, a senha não deve ser alterada

// Regras
// Não permita acesso direto à senha
// A validação deve acontecer dentro da classe

class Usuario {
    private var senha: String

    init(senha: String) {
        self.senha = senha
    }

    func mudarSenha(novaSenha: String) {
        if novaSenha.count > 6 {
            senha = novaSenha
        } else {
            print("Senha invalida")
        }
    }
}

// Desafio 5 – Funcionários da Empresa
// Descrição
// Uma empresa possui funcionários de tipos diferentes, e cada um tem uma forma distinta de cálculo salarial.
// O que precisa ser feito
// Crie uma classe base Funcionario
// Crie um método calcularSalario() -> Double
// Crie subclasses como:
// CLT
// PJ
// Cada tipo deve calcular o salário de forma diferente
// Armazene os funcionários em um array [Funcionario]
// Percorra o array imprimindo o salário de cada funcionário
// Regras
// Use polimorfismo
// Não use if ou switch
// O salário não pode ser um valor público e alterável diretamente

class Funcionario {
    var salario: Double

    init(salario: Double) {
        self.salario = salario
    }

    func calcularSalario() -> Double {
        return salario
    }
}

class CLT: Funcionario {
    override func calcularSalario() -> Double {
        return self.salario * 0.70
    }
}

class PJ: Funcionario {
    override func calcularSalario() -> Double {
        return self.salario * 0.8
    }
}

var functionarios: [Funcionario] = [CLT(salario: 3000.0), PJ(salario: 5000)]

for functionario in functionarios {
    print(functionario.calcularSalario())
}
