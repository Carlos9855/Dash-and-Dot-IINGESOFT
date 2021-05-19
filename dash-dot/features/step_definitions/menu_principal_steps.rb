Given ("visito la pagina principal") do
    visit '/'
    click_link('Iniciar Juego')
end

Then("Deberia ver un mensaje {string}") do |string|
    expect(page.body).to match /#{string}/m
end