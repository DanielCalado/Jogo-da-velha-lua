require "Jogador"
require "Tabuleiro"

tabuleiro:gerar()

function jogaDaVelha()
	print("Bem vindo ao joga da velha")
	print("..........................")
	print("Jogador O digite seu nome:")
		jogador1.nome = io.read()
	print("..........................")
	print("Jogador X digite seu nome:")
		jogador2.nome = io.read()

end

reiniciar = " "
function reiniarJogo()
	print("..........................\nObrigado por jogar nosso jogo!!")
		reiniciar = io.read()
	print("..........................\nDeseja jogar novamente?(sim ou não)")
		reiniciar = io.read()

	if(reiniciar == "sim")then
		tabuleiro:gerar()
		tabuleiro:visualizar()
		tabuleiro:iniciarJogadas()
	else
		print("..........................\nObrigado por jogar")
		tabuleiro:gerar()
	end
end

jogaDaVelha()

tabuleiro:visualizar()

tabuleiro:iniciarJogadas()

