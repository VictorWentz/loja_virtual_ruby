require File.expand_path('lib/loja_virtual')
require_relative 'test_helper'

class TestBook < Test::Unit::TestCase

    def setup
        @classe = Livro.new('TDD','Mauricio', 123, '2423',
                           10, :teste)
    end

    def test_Initialize
        assert_equal('Mauricio', @classe.autor)
        assert_equal(123, @classe.numero_de_paginas)
        assert_equal('2423', @classe.isbn)
        assert_equal(10, @classe.preco)
        assert_equal(:teste, @classe.categoria)
        
    end

    def test_equality
        assert_equal(45.3, @classe.preco=45.3)
    end


end

