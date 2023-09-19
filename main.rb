require 'gosu'
require_relative 'classes'
require_relative 'atributos'
require_relative 'historias'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Viver e morrer em BH"
    @font = Gosu::Font.new(20)
    @jovem = nil
    @nome = ""
    @estado = :captura_nome  # Estados possíveis: :captura_nome, :selecao_classe, :jogo
  end

  def update
    case @estado
    when :captura_nome
      # Lógica para capturar o nome aqui
    when :selecao_classe
      if Gosu.button_down? Gosu::KB_1
        @jovem = EstudanteMedio.new(@nome, 17)
        @estado = :jogo
      elsif Gosu.button_down? Gosu::KB_2
        @jovem = Artista.new(@nome, 17)
        @estado = :jogo
      # ... (outros casos)
      end
    when :jogo
      # Lógica do jogo aqui
    end
  end

  def draw
    corBranca = 0xFFFFFF00
    case @estado
    when :captura_nome
      @font.draw_text("Digite seu nome: #{@nome}", 10, 10, 0, 1.0, 1.0, 0xFFFFFF00)
    when :selecao_classe
      classes = [EstudanteMedio, Artista, Esportista, JovemCrente, Ativista, Nerdola]
      classes.each_with_index do |classe, index|
        resumo = mostrar_historia(classe.new("", 0))
        @font.draw_text("#{index + 1}. #{resumo}", 10, 10, 0, 1.0, 1.0, 0xFFFFFF00)
      end
      when :jogo
      historia = mostrar_historia(@jovem)
      @font.draw_text(historia, 10, 10, 0, 1.0, 1.0, 0xFFFFFF00)
    end
  end

  def button_down(id)
    case @estado
    when :captura_nome
      if id == Gosu::KB_RETURN
        @estado = :selecao_classe
      elsif id == Gosu::KB_BACKSPACE
        @nome.chop!
      else
        char = Gosu.button_id_to_char(id)
        @nome << char if char
      end
    end
  end
end
window = GameWindow.new
window.show
