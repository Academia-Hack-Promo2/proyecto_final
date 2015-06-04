# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.create!([
	{name:"Gamatel Telecomunicaciones",rif:"J-30396386-2",address:"Caracas, Av. 4ta, cruce con, Transv. 1ra Y 2da, Edificio Unión, Piso PB, Local D, Urbanización Los Palos Grandes",phone:"02122867260",email:"telecomunicaciones@gmail.com"},
	{name:"Unidad Educativa Cultura y Tecnología",rif:"J-07579721-3",address:"Maracay, Cl. El Canal, Casa 0, Nivel 0, Local 18, Barrio Libertad",phone:"02432474204",email:"uect@gmail.com"},
	{name:"Comunicaciones Comlink",rif:"J-30347885-9",address:"Caracas, Av. Londres, Quinta Elena, Nivel Pb, Local 19-19, Urbanización La California Norte",phone:"02122727486",email:"commlink@hotmail.com"},
	{name:"Tecnología Digital",rif:"J-30887452-3",address:"Falcón, Punto Fijo, Av. Colombia, Edificio Tecnología Digital, Piso PB, Oficina 1, Sector Centro",phone:"02692472979",email:"digitalt@outlook.com"},
	{name:"Acuavital",rif:"J-30450356-3",address:"Maracaibo, Circunv. Prolongación N° 2, cruce con, Cl. 55-A Y Av. 7, Edificio Aquavital, Nivel PB, Local 57-150, Urbanización Zapara I",phone:"02617417597",email:"acuavital@hotmail.com"},
	{name:"Tecnología TGK",rif:"J-00275428-1",address:"Caracas, Av. Principal, Edificio Lepanto, Piso 2, Oficina 30, Urbanización Colinas De Bello Monte",phone:"02127516720",email:"tgk@gmail.com"}
])

Provider.create!([
	{name:"Embotelladora Agua Potable Amazonia, C.A",rif:"J-30427657-5",adress:"Amazonas, Puerto Ayacucho, Av. Perimetral, Edificio 44, Urbanización El Caicet",phone:"02485210764",email:"tuagua@hotmail.com"},
	{name:"S.T.C.",rif:"J-30303752-6",adress:"Valencia, Av. Principal, Centro Comercial Big Low Center, Piso Pb, Local 6, Urbanización Parque Industrial Castillito",phone:"02418714825",email:"stc@gmail.com"},
	{name:"C. A. La Electricidad de Caracas",rif:"J-00021243-0",adress:"Miranda, Guatire, Cr. Vieja Guatire- Guatire, Edificio Electricidad,",phone:"02123407111",email:"electricidadcss@servicios.com"},
	{name:"VIT C.A.",rif:"G-20009381-1",adress:"Falcón, Punto Fijo, Av. Bolívar, V.I.T, Urbanización Zona Franca",phone:"08004636848",email:"vit@gobierno.com"},
	{name:"FL Inter Corp Excutive, CA",rif:"J-30168407-9",adress:"Caracas, Local S/N, Sector Catia",phone:"02128703922",email:"quelala@gmail.com"},
	{name:"chicasmalas",rif:"j-20264865-7",adress:"Al lado del Chorizo",phone:"08001234567",email:"tuchicamala@sex.com"}
])	

Student.create!([
	{name:"Samuel",l_name:"Melgarejo",identification:"V-22694771",adress:"Cua estado Miranda",phone:"04262163734",email:"samuel021093@gmail.com",active:"active"},
	{name:"Rosa",l_name:"Meltroso",identification:"V-12345678",adress:"Tukilandia",phone:"02121234567",email:"rosita69@hotmail.com",active:"active"},
	{name:"Alan",l_name:"Brito",identification:"V-12345679",adress:"mi casita bulda'ehbien",phone:"02391234567",email:"elmio@hotmail.com",active:"inactive"}
])
