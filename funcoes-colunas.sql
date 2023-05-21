--funções em colunas 

select sysdate from dual;
--para mostrar datas

select to_char(sysdate 'dd-mon-yy') from dual;
--customiza a exibição da data

select trunc(58.548,1) from dual;
--arredonda o numero, para 1 casa depois da virgula

select ename, lower(ename), upper(ename), initcap(ename) from scott.emp
--converte a capitalização das letras

select ename, sal
from scott.emp
order by ename asc; 
--exibe a coluna ename em ordem crescente/o comando tb serve para numeros

select ename, sal
from scott.emp
order by ename desc; 
--exibe a coluna ename em ordem  decrescente

select ename, deptno, sal
from scott.emp
order by deptno, sal desc;
-- orderna primeiro por depto em ordem crescente, e entre os func do mesmo depto, por salario em ordem descrecente 
