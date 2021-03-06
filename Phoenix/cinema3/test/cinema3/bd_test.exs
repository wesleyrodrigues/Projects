defmodule Cinema3.BDTest do
  use Cinema3.ModelCase
  alias Cinema3.BD

  @usuario_params %{
    "username" => "We1",
    "nome" => "Wesley",
    "cpf" => "12345678945",
    "rg" => "1234789",
    "telefone" => "45698745",
    "endereco" => "rua das avenidas",
    "senha" => "123456",
    "senha_confirm" => "123456"
  }

  @filme_params %{
    "nome" => "testando",
    "ano" => "101220",
    "sinopse" => "testando",
    "elenco" => "testando",
    "formato" => "testando",
    "duracao" => "testando",
    "categoria" => "testando",
    "classificacao" => "testando"
  }

  describe "Usuarios" do
    test "Testando ao inserir usuário null" do
      assert {:error, _} = BD.inserir_usuario(%{})
    end

    test "testando ao inserir com valores válidos" do
      assert {:ok, _} = BD.inserir_usuario(@usuario_params)
    end
  end

  describe "Filmes" do
    test "Testando ao inserir filme null" do
      assert {:error, _} = BD.inserir_filme(%{})
    end

    test "Testando ao inserir com valores válidos" do
      assert {:ok, _} = BD.inserir_filme(@filme_params)
    end
  end
end
