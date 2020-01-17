def boas_vindas
    #começamos o programa
    puts "Welcome" 
    puts "Qual o seu nome?"
    #entrada da variavel nome
    nome = gets 
    puts "começaremos o jogo, " + nome 
end

def sorteia_numero_secreto
    puts "Escolha um numero de 0 a 200 \n\n\n"
    # valor do numero secreto definido como 175, seria bom ser aleatório
    sorteado = 175 
    puts "Escolhido o numero entao agora vamos adivinhar \n\n\n"
    sorteado
end

boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    # entrada vda variavel chute
    chute = gets 
    puts "Será que vc acertou? Voce chutou " + chute
    #condicional para acerto ou erro do chute
    acertou = chute.to_i == numero_secreto
    if acertou
        puts "acertou"
        break
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "o numero é maior"
            puts "\n"
        else
puts "o numero é menor"
puts "\n"
        end
    end
end
