--DML
USE db_devconnect;


INSERT INTO tb_usuario (nomeCompleto, nomeDeUsuario, email, senha,fotoPerfilUrl)
VALUES 
('Cleiton Rasta','Cleitin do Grau'),
('CleitonRasta@gmail.com','123321','foto-cleiton-perfil/12321321');


INSERT INTO tb_publicacao (descricao, imagemUrl, data_publicacao, id_usuario)
VALUES 
('Bolo de cenoura','Foto-Bolo-Cenoura/3322111','14/09/2019','Cleitin do Grau');



INSERT INTO tb_curtida (id_Usuario, id_Publicacao)
VALUES 
('Cleitin do Grau'),
('3');


INSERT INTO tb_comentario (texto, dataComentario, id_Publicacao, id_Usuario)
VALUES 
('Gostaram do bolo de cenoura?','14/09/2019','3','Cleitin do Grau');

INSERT INTO tb_seguidor (id_Usuario_Seguir, id_Usuario_Seguido)
VALUES 
(1,2);
