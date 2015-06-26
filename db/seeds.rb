# cards_facil = [
# {:question=>"¿Quién fue famoso esposo de Frida Kahlo?", :answer=>"Diego Rivera"},
# {:question=>"¿Qué era el Concorde?", :answer=>"avion"},
# {:question=>"¿A qué Ciudad-Estado pertenecía la localidad natal de Leonardo Da Vinci?", :answer=>"florencia"},
# {:question=>"¿Qué país no presenta reclamaciones territoriales sobre la Antártida?", :answer=>"brasil"},
# {:question=>"¿Cual es la moneda oficial de Panamá?", :answer=>"balboa"}
# ]

# cards_intermedio = [
# {:question=>"¿Qué le sucede a la energía?", :answer=>"transforma"},
# {:question=>"Maximiliano I, emperador de México en la segunda intervención francesa, nació en... ", :answer=>"viena"},
# {:question=>"El Principito le pide a Saint-Exupéry que le dibuje..", :answer=>"cordero"},
# {:question=>"China es un régimen...", :answer=>"comunista"},
# {:question=>"Banksy es el seudónimo de un famoso...", :answer=>"grafitero"}
# ]

# cards_dificil = [
# {:question=>"¿De cuántos vértices se trata en el teorema de Pitágoras?", :answer=>"tres"},
# {:question=>"¿Cómo se denomina la manifestación visible de un organismo?", :answer=>"fenotipo"},
# {:question=>"¿Qué escritor no consiguió el premio Nobel a causa de sus posturas políticas?", :answer=>"borges"},
# {:question=>"¿A qué edificio trepó King Kong?", :answer=>"empire state"},
# {:question=>"¿Qué es el 'Texas Holdem?", :answer=>"poker"}
# ]


# # puts cards_array[0][:question]

# deck_facil = Deck.create(category: "Fácil")
# deck_intermedio = Deck.create(category: "Intermedio")
# deck_dificil = Deck.create(category: "Difícil")

# cards_facil.each do |card_element|
# 	deck_facil.cards << Card.create(question: card_element[:question], answer: card_element[:answer])
# end

# cards_intermedio.each do |card_element|
# 	deck_intermedio.cards << Card.create(question: card_element[:question], answer: card_element[:answer])
# end

# cards_dificil.each do |card_element|
# 	deck_dificil.cards << Card.create(question: card_element[:question], answer: card_element[:answer])
# end




