
tabuleiro = {}

function tabuleiro:gerar()
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


jogador={}

function jogador:criarJogador()
	novoJogador = {nome = " ", jogada = " ", pontos = 0}

	return novoJogador
end

jogador1 = jogador:criarJogador()
jogador2 = jogador:criarJogador()

	jogador2.jogada = "O"
	jogador1.jogada = "x"


------------------------------------------------------------------
------------------------------------------------------------------

function tabuleiro:verificarGanhouX()
	if(tabuleiro[1][1] == "X" and tabuleiro[1][2] == "X" and tabuleiro[1][3] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[2][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[2][3] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()

		i = 10
	end
	if(tabuleiro[3][1] == "X" and tabuleiro[3][2] == "X" and tabuleiro[3][3] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][1] == "X" and tabuleiro[3][1] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][2] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][2] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][3] == "X" and tabuleiro[3][3] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][3] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][1] == "X")then
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end

end

function tabuleiro:verificarGanhouO()
	if(tabuleiro[1][1] == "O" and tabuleiro[1][2] == "O" and tabuleiro[1][3] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[2][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[2][3] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[3][1] == "O" and tabuleiro[3][2] == "O" and tabuleiro[3][3] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][1] == "O" and tabuleiro[3][1] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][2] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][2] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][3] == "O" and tabuleiro[3][3] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][3] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][1] == "O")then
		print("Jogador(X) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end

end

function tabuleiro:enpatou()
	if(i == 10)then
		print("Jogo enpatado")
		reiniarJogo()
	end
end


function tabuleiro:iniciarJogadas()
	i = 1
	tabuleiro:enpatou()
	while i <= 9 do
		if(i % 2 == 0)then
			print("Jogador" .. jogador1.nome .. " jogue:(X)")
				print("digite a linha:")
					linhaLocal = io.read('*number')
				print("digite a coluna:")
					colunaLocal = io.read('*number')
						if(tabuleiro[linhaLocal][colunaLocal] == " ")then
							tabuleiro[linhaLocal][colunaLocal] = "X"
							tabuleiro:visualizar()
							i = i + 1
						tabuleiro:verificarGanhouX()
						else
							print("Jogada invalida ou espaço ja ocupado, jogue novamente!!!")
						end

		else
			print("Jogador" .. jogador1.nome .. " jogue:(O)")
				print("digite a linha:")
					linhaLocal = io.read('*number')
				print("digite a coluna:")
					colunaLocal = io.read('*number')

					if(tabuleiro[linhaLocal][colunaLocal] == " ")then
							tabuleiro[linhaLocal][colunaLocal] = "O"
							tabuleiro:visualizar()
							i = i + 1
							tabuleiro:verificarGanhouO()
					else
						print("Jogada invalida ou espaço ja ocupado, jogue novamente!!!")
						end
		end
	end
end

function jogaDaVelha()
	print("Bem vindo ao joga da velha")
	print("..........................")
	print("Jogador O digite seu nome:")
		jogador1.nome = io.read()
	print("Jogador X digite seu nome:")
		jogador2.nome = io.read()

end
	reiniciar = " "
function reiniarJogo()



	print("Obrigado por jogar nosso jogo!!")
	reiniciar = io.read()
	print("Deseja jogar novamente?(sim ou não)")
		reiniciar = io.read()

	if(reiniciar == "sim")then
		tabuleiro:gerar()
		tabuleiro:visualizar()
		tabuleiro:iniciarJogadas()
	else
		print("Obrigado por jogar")
	end
end

jogaDaVelha()

tabuleiro:visualizar()

tabuleiro:iniciarJogadas()
