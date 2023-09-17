require 'gosu'
require_relative 'classes'
require_relative 'atributos'
require_relative 'historias'

class GameWindow < Gosu::Window
    def initialize 
        super, 640, 480
        self.caption = "Viver e morrer em BH"
        @font = Gosu::Font.new(20)
        @jovem = nil
        @nome = ""
        @captura_nome = true
    end

    def update ## logica

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

    def draw    
        if @captura_nome
            @font,draw_text("Digite seu nome: #{nome}", 10, 0, 0)
        elseif @jovem
            historia.mostrar_historia(@jovem)
        font = Gosu::font.new(20)
        font.draw_text("Textos", x, y, z)
        else 
            @font.draw_text("aaaaaaaaaaaaa", 10, 10, 0)
        end
    end
    
    def button_down(id)
        if @captura_nome
            if id ==Gosu::KB_RETURN
                @captura_nome=false
            elsif id == Gosu::KB_BACKSPACE
                @nome.chop!
            end
        end
    end


    def button_up(id)
        #### definir andamento dos botões
    end

    def needs_cursor? #mostrar mouse - se sim, como o mouse vai ser usado?
        true
    end
end

window = GameWindow.new
window.show
