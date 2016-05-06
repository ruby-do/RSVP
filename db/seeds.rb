# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file .env file.
#
#
Event.create(
  name: Event::NAME,
  description: Event::DESCRIPTION,
  date: Event::DATE,
  seat_limit: Event::SEAT_LIMIT
)

Event.create(
  name: "Free & Open Saturday at La Romana",
  description: <<-DESC.strip_heredoc,
          Un evento donde se impartiran charlas sobre las importancia del FOSS, entornos de programacion en Linux, Base de datos, Docker, Samba 4, Asterisk. Hablaremos de como migrar a FOSS y daremos ejemplos practicos de como hacerlo.
          Culminamos con un panel sobre las comunidadades tecnologicas realizado por meta.do y al finalizar los esperamos en el area de Networking para socializar y hacer preguntas mas de cerca a los oradores.
          Tendremos tishirt de la comunidad de Linux Dominicana para las 100 primeras personas en llegar al evento.
          El evento inicia a las 9:00 AM, favor llegar temprano! Para reservas sus entradas GRATIS aqui: https://goo.gl/6NksUp
          #OpenSaturdayV2
  DESC
  date: Date.tomorrow,
  seat_limit: 30
)
