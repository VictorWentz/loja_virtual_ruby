require File.expand_path('lib/loja_virtual')
require_relative 'test_helper'



class TestRelatorio < Test::Unit::TestCase
  def setup
    bib = get_setup_bib
    @relatorio = Relatorio.new bib
  end

  def test_soma
    assert_equal 20.1, @relatorio.total

  end

end
