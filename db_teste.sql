USE db_projeto_final;

select * from usuario;

select * from usuario u
join tipo_usuario t
on u.id_tipo = t.id_tipo;

select * from plano_cliente;

select * from funcionalidade;

-- Puxando por tipo de usuario
select * from usuario u
join relacao r
on u.id_tipo = r.id_tipo
join tipo_usuario t
on r.id_tipo= t.id_tipo
join funcionalidade f
on f.id_fun = r.id_fun
WHERE u.id_tipo = 1; 

-- Puxando pelo nome
select * from usuario u
join relacao r
on u.id_tipo = r.id_tipo
join tipo_usuario t
on r.id_tipo= t.id_tipo
join funcionalidade f
on f.id_fun = r.id_fun
WHERE u.nome = 'jose';

 
