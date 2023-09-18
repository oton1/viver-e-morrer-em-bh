require_relative 'classes'

def mostrar_historia(jovem)
    case jovem.class.name
    when "EstudanteMedio"
        return 
        "Você é apenas mais um estudante mediano. Não se destaca em nada, possui seu grupo de amigos de sempre e está disposta à qualquer aventura na cidade (nem toda). 
        Guiado pela frase 'Corre pelo bem mas curte um veneno', você tem uma experiência com álcool, tabaco e outras drogas, mesmo não tendo idade para isto.
        Seus sonhos são entrar para a Universidade Pública sem estudar para o ENEM e arrumar um namoro sem neurose com a vida. No final do dia, tudo que você quer é um cigarrinho 
            de palha, uma cerveja gelada e a casa de algum amigo legalizada pra fazer o que bem entender."
    when "Artista"
        return
        "Guiado pelos sonhos e vontades de uma vida cheia de sensibilidade com o mundo e suas formas, você decidiu em jovem idade que deveria ser artista.
        Design gráfico ou arquitetura parecem ser opções que não incomodam tanto seus pais mas você tem certeza que seus personagens anatomicamente dúbios vão mudar o mundo.
        No final do dia, seus sonhos são ganhar dinheiro (absolutamente qualquer um), amor livre (mas nem tanto) e não terminar vendo miçangas no baixo centro."
    when "Esportista"
        return
        "Terror do futebol do terceiro ano do ensino médio, seus pais te falam desde criança que você pode ser tudo que quiser. De fato pode, pois eles tem dinheiro.
        Bom em todos os esportes, sua vida até aqui é baseada em jogar bola, beijar moças populares e humilhar seus colegas diferentes de você e seus amigos esfregando padrões
        de estética e poder na cara deles. Cheio de futuro, você é presença garantida na turma de Direito/PUC-Minas do próximo ano. Seus sonhos são baseados em empreender com
            o dinheiro dos seus pais e ter um carro o mais rápido possível pra poder justificar seus assédios."
    when "JovemCrente"
        return
        "Glória a deus! Líder de célula, grupo de jovens e rodinhas crentes da escola, você nasceu para espalhar a palavra do Senhor. Mesmo que no final do dia você não siga
        muito bem a Bíblia nas resenhas de sábado a noite, todos sabem que a aparência do poder evangélico é grande em você. Domina todas e todos com as palavras, exibe um padrão
            de vida excelente (seus pais são pastores) e vive a vida de forma exatamente oposta ao que prega. Tem 10x mais chances de agredir alguém verbalmente e de ter um
            relacionamento homossexual por baixo dos panos. 'E Deus disse: que se faça o amor!'"
    when "Ativista"
        return
        "Contra tudo e contra todes, desde muito jovem você demonstra ter uma noção política aguçada e a capacidade única de julgar todas as pessoas ao seu redor pelo seus
        desconhecimento sobre a política e sobre o mundo. Do alto de seu apartamento no Santo Antônio ou Santo Agostinho, o conhecimento transmitido pelos seus pais (professores
            universitários) e os belos versos transmitidos pelo seu ídolo pessoal Renato Russo te transformaram numa pessoa moralmente superior. Seu grande inimigo é o estado
            burguês, as instituições e é claro, os nerdolas. Essa classe tem 50x de possibilidade de se tornar um esquerdomacho ou esquerdomina após o evento 'ENEM'."
    when "Nerdola" 
        return
        "Deus vult! O nerdola é uma das classes mais reconhecidas da sociedade neste momento do Brasil. Tendo ganhado muita força nos últimos 10 anos com a proibição do bullying,
        você é contra quaisquer minorias, aproveita qualquer chance para opinar negativamente sobre o corpo feminino e ativamente reclama de atores pretos fazendo personagens.
        Seu sonho é ser amado sendo uma pessoa horrível, sendo que na prática todos sabemos que isso é impossível. Seu elo no LoL é alto e isso de alguma forma te dá autoridade para
        dar opiniões. Seus ídolos são Monark e Elon Musk, e você defende bilionários mesmo tendo uma renda familiar de 2 salários mínimos."
    else 
        return "Essa classe não existe, meu chapa."
    end
end