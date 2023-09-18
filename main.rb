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
    @captura_nome = true
  end

  def update
    if @captura_nome
      # Lógica para capturar o nome aqui
    else
      if Gosu.button_down? Gosu::KB_1
        @jovem = EstudanteMedio.new(@nome, 17)
      elsif Gosu.button_down? Gosu::KB_2
        @jovem = Artista.new(@nome, 17)
      elsif Gosu.button_down? Gosu::KB_3
        @jovem = Esportista.new(@nome, 17)
      elsif Gosu.button_down? Gosu::KB_4
        @jovem = JovemCrente.new(@nome, 17)
      elsif Gosu.button_down? Gosu::KB_5
        @jovem = Ativista.new(@nome, 17)
      elsif Gosu.button_down? Gosu::KB_6
        @jovem = Nerdola.new(@nome, 17)
      end
    end
  end

  def draw
    if @captura_nome
      @font.draw_text("Digite seu nome: #{@nome}", 10, 10, 0)
    elsif @jovem
      historia = mostrar_historia(@jovem)
      @font.draw_text(historia, 10, 10, 0)
    else
      @font.draw_text("Pressione 1 para Estudante Médio, 2 para Artista ", 10, 10, 0) #terminar de incluir as classes aqui
    end
  end

  def button_down(id)
    if @captura_nome
      if id == Gosu::KB_RETURN
        @captura_nome = false
      elsif id == Gosu::KB_BACKSPACE
        @nome.chop!
      end
    end
  end

  def button_up(id)
    # Lógica para quando uma tecla é liberada, se necessário
  end

  def needs_cursor?
    true
  end
end

window = GameWindow.new
window.show
