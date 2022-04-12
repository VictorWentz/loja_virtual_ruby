require_relative File.expand_path('lib/loja_virtual')
require "test/unit"

class TestBiblioteca < Test::Unit::TestCase
  def setup
    @livro = Livro.new('Mauricio', 123, '4124', 60.9)
    @Bib = Biblioteca.new()
  end

  def testInitialize
    assert_equal(Array, @Bib.livros.class)
  end

  def testAdiciona
    @Bib.adiciona(@livro)

    assert_equal(1, @Bib.livros.length)
  end

end