require File.expand_path('lib/loja_virtual')
require "test/unit"

def get_setup_bib
  livro1 = Livro.new('TDD','Mauricio', 123, '2423',
                     10, :teste)

  livro2 = Livro.new	'Design Responsivo',"Tárcio	Zemel",	45234,
                       '189',	10.1,	:web_design

  bib = Biblioteca.new

  bib.adiciona(livro1)
  bib.adiciona(livro2)

  bib

end

def get_setup_book

  livro1 = Livro.new('TDD','Mauricio', 123, '2423',
                     10, :teste)

  livro2 = Livro.new	'Design Responsivo',"Tárcio	Zemel",	45234,
                      '189',	10.1,	:web_design

  return livro1, livro2
  
end