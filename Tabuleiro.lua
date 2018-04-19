
tabuleiro = {}

function tabuleiro:gerar()
	for linha = 1, 3 do
		tabuleiro[linha] = {}

		for coluna = 1, 3 do
			tabuleiro[linha][coluna]= 1
		end
	end
	return tabuleiro
end

function tabuleiro:visualizar()
	for linha = 1, 3 do
			aux = " "

			for coluna = 1, 3 do

				if coluna ~= 3 then
					if(tabuleiro[linha][coluna] == 1)then
						aux = aux .. " ".." | "
					else
						aux = aux .. tabuleiro[linha][coluna].." | "
					end
				else
					if(tabuleiro[linha][coluna] == 1)then
						aux = aux .. " "
					else
						aux = aux .. tabuleiro[linha][coluna]
					end
				end
			end
			print(aux)
			if linha < 3 then
				print("-----------")
			end
		end
end




function tabuleiro:verificarGanhouX()
	if(tabuleiro[1][1] == "X" and tabuleiro[1][2] == "X" and tabuleiro[1][3] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[2][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[2][3] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()

		i = 10
	end
	if(tabuleiro[3][1] == "X" and tabuleiro[3][2] == "X" and tabuleiro[3][3] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][1] == "X" and tabuleiro[3][1] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][2] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][2] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][3] == "X" and tabuleiro[3][3] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][3] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "X" and tabuleiro[2][2] == "X" and tabuleiro[3][1] == "X")then
		print("..........................")
		print("Jogador(X) " .. jogador1.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end

end

function tabuleiro:verificarGanhouO()
	if(tabuleiro[1][1] == "O" and tabuleiro[1][2] == "O" and tabuleiro[1][3] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[2][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[2][3] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[3][1] == "O" and tabuleiro[3][2] == "O" and tabuleiro[3][3] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][1] == "O" and tabuleiro[3][1] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][2] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][2] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][3] == "O" and tabuleiro[3][3] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][1] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][3] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end
	if(tabuleiro[1][3] == "O" and tabuleiro[2][2] == "O" and tabuleiro[3][1] == "O")then
		print("..........................")
		print("Jogador(O) " .. jogador2.nome .. " Ganhou")
		reiniarJogo()
		i = 10
	end

end

function tabuleiro:enpatou()
		print("..........................")
		print("Jogo enpatado")
		reiniarJogo()

end

function tabuleiro:iniciarJogadas()
i = 1
	while i <= 9 do

		if(i % 2 == 0)then
			print("..........................")
			print("Jogador " .. jogador1.nome .. " jogue:(X)")
				print("..........................")
				print("digite a linha:")
					linhaLocal = io.read("*number")

				print("..........................")
				print("digite a coluna:")
					colunaLocal = io.read("*number")

					if(type(linhaLocal) == "number" and type(colunaLocal) == "number")then

						if(linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3 and
							tabuleiro[linhaLocal][colunaLocal] == 1)then
							tabuleiro[linhaLocal][colunaLocal] = "X"
							tabuleiro:visualizar()
							i = i + 1
						tabuleiro:verificarGanhouX()
						else
							print("..........................")
							print("**Digite um numero entre 1 e 3** \n**Escolha uma casa vazia**")
						end
					else
						print("..........................")
						print("Você digitou uma letra, Digite um numero!!")
						io.read(1)
					end


		else
			print("..........................")
			print("Jogador " .. jogador1.nome .. " jogue:(O)")
				print("..........................")
				print("digite a linha:")
					linhaLocal = io.read('*number')
				print("..........................")
				print("digite a coluna:")
					colunaLocal = io.read('*number')
					if(type(linhaLocal) == "number" and type(colunaLocal) == "number" and
					linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3)then
					if(linhaLocal >=1 and linhaLocal <=3 and colunaLocal >= 1 and colunaLocal <= 3
						and tabuleiro[linhaLocal][colunaLocal] == 1)then

							tabuleiro[linhaLocal][colunaLocal] = "O"
							tabuleiro:visualizar()
							i = i + 1
							tabuleiro:verificarGanhouO()
						else
							print("..........................")
							print("**Digite um numero entre 1 e 3** \n**Escolha uma casa vazia**")
						end

						else
							print("..........................")
							print("Você digitou uma letra, Digite um numero!!")
							io.read(1)
						end
		end

	end

	if(i == 10)then
		tabuleiro:enpatou()
		i = i + 1
	end
end


