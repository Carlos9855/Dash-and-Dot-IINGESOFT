Given("visito la pgina de comandos") do
    visit "/"
    click_link('Iniciar Juego')
    click_link('1 SOLO AUTO')
end

When("ingreso la posicion inicial del auto {string}") do |comandos|
    fill_in('campo_entrada', :with => comandos)
end

Then("presiono el boton {string}") do |ejecutar|
    click_button('ejecutar')
end
