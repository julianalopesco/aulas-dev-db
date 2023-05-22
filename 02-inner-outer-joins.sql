--scripts para consultas complexas em  SQL Oracle 

--get all

select job
from scott.emp 
--mostra todos os cargos, mesmo os repetidos

select distinct job
from scott.emp
--mostra somente os valores únicos

------

select emp.ename, dept.dname,emp.deptno,dept.deptno
--identificação do nome da tabela e campo
from scott.emp join scott.dept
--para unir duas tabelas
on (emp.deptno=dept.deptno)
--especifica como as tabelas estão relacionadas

------

--junção natural

select ename, dname, depto
--junção natural no oracle
from scott.emp natural join scott.dept

------

--junção natural com apelidos

select e.ename, d.dname, e.depto
--define os apelidos
from scott.emp e join scott.dept d
on(e.deptno = d.deptno);
--usando os apelidos

----

--inner join 

select e.ename, d.dname, e.sal, d.loc
from scott.emp e inner join scott.dept d
on (e.deptno = d.deptno)
--condição para junção 
where e.sal> 2000;
-- especifica condição

----

apelidando os campos da tabela 

select e.ename NOME, d.dname DEPARTAMENTO, e.sal SALARIO, d.loc LOCAL
from scott.emp e inner join scott.dept d
on (e.deptno = d.deptno)
--condição para junção 
where e.sal> 2000;
-- especifica condição

----

--junção externa completa 

select e.ename, e.sal, e.deptno, d.deptno, d.dname
from scott.emp e full outer join scott.dept d
--faz uma junção externa completa, incluindo nulos
on (e.deptno = d.deptno);
--condição para junção 

----

