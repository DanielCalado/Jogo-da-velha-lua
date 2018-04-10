--funções do tabuleiro

tabuleiro = {}

function tabuleiro:gerar()
	novoTabuleiro = {}
	for linha = 1, 3 do
		tabuleiro[linha] = {}

		for coluna = 1, 3 do
			tabuleiro[linha][coluna]= " "
		end
	end
	return tabuleiro
end

function tabuleiro:visualizar()
	for linha = 1, 3 do
			aux = " "

			for coluna = 1, 3 do

				if coluna ~= 3 then
					aux = aux .. tabuleiro[linha][coluna].." | "
				else
					aux = aux .. tabuleiro[linha][coluna]

				end
			end
			print(aux)
			if linha < 3 then
				print("-----------")
			end
		end
end

tabuleiro:gerar()
------------------------------------------------------------------
------------------------------------------------------------------

--funções do Jogadores

jogador={}

function jogador:criarJogador()
	novoJogador = {nome = " ", jogada = " ", pontos = 0}

	return novoJogador
end

jogador1 = jogador:criarJogador()
jogador2 = jogador:criarJogador()

	jogador1.jogada = "O"
	jogador2.jogada = "x"


------------------------------------------------------------------
------------------------------------------------------------------







function jogaDaVelha()
	print("Bem vindo ao joga da velha")
	print("..........................")
	print("Jogador O digite seu nome:")
		jogador1.nome = io.read()
	print("Jogador X digite seu nome:")
		jogador2.nome = io.read()
end

jogaDaVelha()

tabuleiro:visualizar()

novoTabuleiro = {}
	for linha = 1, 9 do
		if(linha % 2 == 0)then
			print("Jogador X jogue:")
				print("digite a linha:")
					linhaLocal = io.read()
				print("digite a coluna:")
					colunaLocal = io.read()
		tabuleiro[1][1] = "X"
		tabuleiro:visualizar()

		else
			print("Jogador O jogue:")
	end
end

