=begin
Aplicação	 para	 controlar	 uma	 loja	 de	 livros.
Controlaremos	o	seu	estoque,	quais	são	os	clientes	da	loja,	
faremos algumas	vendas	e	guardaremos	todas estas
informações	em	disco, utilizando a	API	de	arquivos do	Ruby
=end

class Livro
    attr_accessor :preco, :isbn, :autor, :numero_de_paginas
    attr_reader :categoria

    def initialize(autor, numero_de_paginas, isbn="1", preco,
                   categoria)

        raise unless autor.is_a?(String)
        raise unless numero_de_paginas.is_a?(Numeric)
        raise unless isbn.is_a?(String)
        raise unless preco.is_a?(Numeric)
    

        @autor = autor
        @numero_de_paginas = numero_de_paginas
        @isbn = isbn
        @preco = preco
        @categoria = categoria

    end

    def hash
        @isbn.hash
    end

    def to_s
        "Autor: #{@autor}, ISBN: #{@isbn}, 
            Pág: #{@numero_de_paginas},
            Categoria: #{@categoria}"
    end

    def eq1?(outro_livro)
        @isbn == outro_livro.isbn
    end

end

