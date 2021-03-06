#	coding:	utf-8
#
class Biblioteca



    def initialize

        # Inicializa banco de arquivos
        @banco_de_arquivos = BancoDeArquivos.new
    end

    def adiciona(livro)
        salva livro do
            @livros << livro
        end

    end

    def livros
        @livros ||= @banco_de_arquivos.carrega
    end

    def livros_por_categoria(categoria)
        @livros.select {|livro| livro.categoria == categoria}
    end

    private
    def salva(livro)
        @banco_de_arquivos.salva livro
        yield
    end



end

