class Biblioteca

    attr_accessor :livros

    def initialize
        @livros = {}
    end

    def adiciona(livro)
        @livros[livro.categoria] ||= []
        @livros[livro.categoria] << livro
    end

    def livros
        @livros.values.flatten
    end

end

