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

// Você quer mostrar números de 0 até 5.
// Desafio:
// Use uma estrutura de repetição para isso
// 👉 Objetivo: entender intervalo (0...5).

// Desafios Mistos (Coleções + Repetição)
// Lista de alunos
// Você tem uma lista de alunos com idades.
// Desafio:
// Guarde os nomes em uma coleção
// Use repetição para mostrar cada nome
// 👉 Objetivo: unir Array + for.

func showName(studientsInfo: [String: Int]) {
    for studient in studientsInfo {
        print(studient.key)
    }
}

showName(studientsInfo: ["Gabriel": 24, "Italo": 28, "Isaac": 32])

// Verificando notas
// Você tem uma lista de notas.
// Desafio:
// Use repetição para verificar quais notas são maiores ou iguais a 7
// Mostre apenas essas notas
// 👉 Objetivo: for + condição.

func getApproved(notes: [Int]) -> [Int] {
    var approvedNotes: [Int] = []
    for note in notes {
        if note >= 7 {
            approvedNotes.append(note)
        }
    }
    return approvedNotes
}

print(getApproved(notes: [3, 4, 5, 7, 8]))
