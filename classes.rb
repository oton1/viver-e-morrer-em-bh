require_relative 'atributos.rb'

class Jovem
    attr_accessor :nome, :idade, :atributos ##aumentar isso depois?
  
    def initialize(nome, idade, atributos)
      @nome = nome
      @idade = idade
      @atributos = atributos
    end
  end
  
  # classes_jovens
  class EstudanteMedio < Jovem
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_ESTUDANTE_MEDIO)
    end
  end
  
  class Artista < Jovem
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_ARTISTA)
    end
  end
  
  class Esportista < Jovem
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_ESPORTISTA) ##discplina é uma classe fake = interação no jogo que se vc é um esportista disciplinado vai ser zoado pelos outros personagens
    end
  end
  
  class JovemCrente < Jovem
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_JOVEM_CRENTE)
    end
  end
  
  class Ativista < Jovem #vulgo jovem de esquerda até a página 2 (class interna: esquerdomacho ou esquerdomina)
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_ATIVISTA)
    end
  end
  
  class Nerdola < Jovem
    def initialize(nome, idade)
      super(nome, idade, ATRIBUTOS_NERDOLA) ## refers to guerraDeClasses
    end
  end