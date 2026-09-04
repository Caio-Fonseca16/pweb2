create database olojinha;
use olojinha;
create table categorias
(
    catid int primary key auto_increment,
    catnome varchar(150),
    catativo boolean default 1
);
create table subcategorias
(
    subid int primary key auto_increment,
    subnome varchar(150),
    subcatid int,
    subativo boolean default 1,
    constraint fksubcatid foreign key (subcatid) references categorias (catid)
);
create table produtos
(
    proid int primary key auto_increment,
    pronome varchar(150),
    prodescricao varchar(1024),
    provalorcusto double,
    provalorvenda double,
    proquantidade int,
    prosubid int,
    proativo boolean default 1,
    constraint fkprosubid foreign key (prosubid) references subcategorias (subid)
);
create table fotosproduto
(
    fotid int primary key auto_increment,
    fotcaminho varchar(1024),
    fotdescricao varchar(150),
    fotproid int,
    fotprincipal boolean default 0,
    fotativo boolean default 1,
    constraint fkfotproid foreign key (fotproid) references produtos (proid)
);

insert into categorias (catnome) values
('Acessórios para Veículos'),
('Agro'),
('Alimentos e Bebidas'),
('Pet Shop'),
('Antiguidades e Coleções'),
('Arte, Papelaria e Armarinho'),
('Bebês'),
('Beleza e Cuidado Pessoal'),
('Brinquedos e Hobbies'),
('Calçados, Roupas e Bolsas'),
('Câmeras e Acessórios'),
('Carros, Motos e Outros'),
('Casa, Móveis e Decoração'),
('Celulares e Telefones'),
('Construção'),
('Eletrodomésticos'),
('Eletrônicos, Áudio e Vídeo'),
('Esportes e Fitness'),
('Ferramentas'),
('Festas e Lembrancinhas'),
('Games'),
('Imóveis'),
('Indústria e Comércio'),
('Informática'),
('Ingressos'),
('Instrumentos Musicais'),
('Joias e Relógios'),
('Livros, Revistas e Comics'),
('Música, Filmes e Seriados'),
('Saúde'),
('Serviços'),
('Mais Categorias');

insert into subcategorias (subnome,subcatid) values
('Acessórios para console',21),
('Consoles',21);


insert into produtos (pronome,prodescricao,provalorcusto,provalorvenda,proquantidade,prosubid) values
('Controle Dualsense PlayStation 5 - Volcanic Red','Crie uma nova maneira de jogar com o elegante acabamento metálico da Deep Earth Collection; Inspirado nos tons marcantes encontrados nas profundezas do nosso planeta e realçados com um acabamento metálico para dar um toque de sofisticação.',499,599,10,1),

('Controle Microsoft Ice Breaker Special Edition Sem Fio Para XBOX Series X','Experimente Jogar com Estilo e Precisão Inigualáveis O Controle Microsoft Ice Breaker Special Edition oferece uma experiência de jogo única com um design translúcido gelado que se destaca e impressiona. Ideal para gamers que buscam precisão e conforto, este controle é perfeito para longas sessões de jogo com sua ergonomia aprimorada e aderência texturizada.',845,950,11,1),

('Pack do console PlayStation®5 – Edição Limitada Ouro - Ghost of Yōtei','Design Slim Com o PS5, os jogadores contam com uma poderosa tecnologia de jogos em um console com design elegante e compacto. 1TB de armazenamento Tenha seus jogos favoritos prontos e esperando para você começar a jogar com 1TB de armazenamento SSD integrado. Uma parte do SSD é reservada para o software do sistema e outras funções, portanto a capacidade disponível do SSD pode variar.',4430,4800,3,2),

('XBOX SERIES X - HALO INFINITE EDITION EDIÇÃO 20 ANOS','Transforme sua experiência de jogo com o Xbox Series X - Edição Especial Halo Infinite! Este console é uma verdadeira obra de arte, com um design exclusivo inspirado no universo de Halo, comemorando 20 anos da lendária franquia. ',13200,15000,2,2);

('Playstation Portal','Seu PS5 na palma da sua mão Com o Reprodutor Remoto PlayStation Portal, você tem acesso a jogos do console PS52 pelo seu Wi-Fi domésticol,1 permitindo jogar em uma excelente tela LCD de 8”, com capacidade de reprodução na resolução de 1080p a 60fps,3 tudo isso sem precisar de uma TV.',1780,2110,4,2);

('Rog XBOX Ally X','o rog xbox ally x coloca a experiência de console na palma da sua mão para jogar tudo em qualquer lugar. equipado com chip gráfico de última geração e bateria de alta capacidade, esse console portátil garante horas de gameplay com máxima qualidade gráfica na tela fluida de alta resolução.',10999,12000,3,2);

('Sony Pulse Elite','Entre em uma nova era do áudio em videogames com sons mais realistas e conectividade extremamente rápida com o PlayStation Link. O Headset sem fio PULSE Elite oferece uma experiência auditiva revolucionária, permitindo que você ouça os jogos exatamente como os desenvolvedores pretendiam ',836,1050,6,2);

('Nintendo Switch 2 - Mario Kart World Bundle','Pacote Nintendo Switch 2 e Mario Kart World (SKU de reabastecimento)
Comece sua aventura no Nintendo Switch 2 com este pacote que inclui um sistema e um download completo do jogo Mario Kart World, exclusivo do Nintendo Switch 2.
O Nintendo Switch 2 é a próxima evolução do sistema Nintendo Switch — repleto de atualizações e maneiras divertidas de se conectar e jogar juntos!',4500,5000,10,2);

('Controle Nintendo Joy-Con 2 para Nintendo Switch 2','Leve suas sessões de jogo a um novo patamar com o conjunto de Controles Joy-Con 2. Esta nova geração de controles oferece uma experiência avançada com controles de movimento mais precisos, a tecnologia HD Rumble 2 e um inovador botão C para facilitar o uso do GameChat e interações inéditas. Com dois controles e alças inclusas, é o conjunto perfeito para partidas multiplayer locais no seu Nintendo Switch 2!',629,780,12,2);

('XBOX SERIES S','Com seu console Xbox Series você terá entretenimento garantido todos os dias. Sua tecnologia foi criada para colocar novos desafios para jogadores novatos e especialistas. A nova geração de consoles é comandada por Xbox Series que chegou ao mercado para surpreender a todos. Sua potência e alto desempenho permitirão que você reduza consideravelmente as horas de download de jogos e conteúdo em comparação com outros consoles.',2500,3000,15,2);


insert into fotosproduto
    (fotcaminho,fotdescricao,fotproid)
values
    ('imgprodutos/controleps5.jpg','1',1),
    ('imgprodutos/controlexbox.webp','1',1),
    ('imgprodutos/ps5.jpg','1',1),
    ('imgprodutos/xbox.jpg','1',1),
    ('imgprodutos/foneps5.webp','1',1),
    ('imgprodutos/switch2.webp','1',1),
    ('imgprodutos/controleswitch2.webp','1',1),
    ('imgprodutos/xboxseries1.jpg','1',1),
    ('imgprodutos/rogally.jpg','1',1),
    ('imgprodutos/psportal.jpg','1',1);
