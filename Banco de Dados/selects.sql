select i.descricao, concat("R$",i.preco)preco, concat(i.area,"m²")area, t.descricao
from imovel i 
inner join tipo t
	on i.id_tipo = t.id_tipo
order by i.preco;

select i.descricao, concat(i.area,"m2")area, concat("R$",i.preco)preco, p.nome
from imovel i
inner join proprietario p
	on i.id_proprietario = p.id_proprietario
order by i.preco;

select i.descricao, concat(i.area,"m2")area, concat("R$",i.preco)preco, p.nome
from imovel i
inner join proprietario p
	on i.id_proprietario = p.id_proprietario
where i.descricao like "%nascente%"
order by i.preco;

select p.nome, p.sexo, p.telefone, pro.descricao
from proprietario p 
inner join profissao pro 
	on p.id_profissao = pro.id_profissao;

select p.nome, p.sexo, p.telefone, pro.descricao
from proprietario p 
left join profissao pro 
	on p.id_profissao = pro.id_profissao;


select p.descricao, pro.nome
from profissao p 
left join proprietario pro 
	on p.id_profissao = pro.id_profissao;
    
select distinct i.id_proprietario, 
	count(i.id_proprietario) as quant_propriedades 
    from imovel i
    where i.id_proprietario is not null
    group by i.id_proprietario;
    
select distinct i.id_proprietario, 
	count(i.id_proprietario) as quant_propriedades 
    from imovel i
    group by i.id_proprietario;
    
select i.descricao, pro.descricao
from imovel i 
inner join proprietario
	on i.id_proprietario = proprietario.id_proprietario
    inner join profissao pro 
		on pro.id_profissao = proprietario.id_profissao;
        
select i.descricao, i.preco, c.descricao
from imovel i 
inner join proprietario p 
	on i.id_proprietario = p.id_proprietario
    inner join cidade c 
		on c.id_cidade = p.id_cidade;
        
