REM   Script: Comandos DDL - Turma
REM   Inicio de comandos DDL para um banco de dados de uma turma

create table aluno( 
    id number(5) primary key, 
    nome varchar2(20) not null, 
    data_mat date default sysdate, 
    cod_turma number(2));

create table turma( 
    cod_turma number(2) primary key, 
    desc_turma varchar2(30) 
);

describe turma


alter table turma 
add periodo varchar2(15);

describe turma


