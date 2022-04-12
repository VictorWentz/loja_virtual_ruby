require_relative File.expand_path('lib/loja_virtual')
require "test/unit"

class TestBook < Test::Unit::TestCase
    def setup
        @classe = Livro.new('Mauricio', 123, '4124', 60.9)
    end

    def testInitialize
        assert_equal('Mauricio', @classe.autor)
        assert_equal(123, @classe.numero_de_paginas)
        assert_equal('4124', @classe.isbn)
        assert_equal(60.9, @classe.preco)
        
    end

    def testEqual
        assert_equal(45.3, @classe.preco=45.3)
    end


end

