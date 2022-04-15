require_relative File.expand_path('lib/loja_virtual')
require_relative 'test_helper'

class TestBiblioteca < Test::Unit::TestCase
  def setup
    @Bib = get_setup_bib

  end

  def test_Initialize
    assert_equal(Array, @Bib.livros.class)
  end

  def test_Adiciona
    assert_equal(2, @Bib.livros.length)
  end

  def test_category_filter
    @Bib.livros_por_categoria :teste do |livro|
      assert_equal('Mauricio', livro.autor)
    end

  end

end