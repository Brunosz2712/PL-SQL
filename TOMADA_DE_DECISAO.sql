---DECLARE
    ---genero CHAR(1) := '&VALOR';
--BEGIN
   -- IF upper(gemero) = 'F' THEN
      --  dbms_output.put_line('O GENERO INFORMADO É FEMININO');
    --ELSIF upper(genero) = 'M' THEN
       -- dbms_output.put_line('O GENERO INFORMADO É MASCULINO');
    --ELSE
       -- dbms_output.put_line('NÃO INFORMADO');
    --END IF;
--END;
--SET SERVEROUTPUT ON;

--DECLARE
    --numero NUMBER := '&VALOR';
--BEGIN
    --IF MOD(numero, 2) = 0 THEN
        --dbms_output.put_line('O NÚMERO INFORMADO É PAR');
    --ELSE
        --dbms_output.put_line('O NÚMERO INFORMADO É IMPAR');
    --END IF;
--END;

--SET SERVEROUTPUT ON; DECLARE
   -- nota NUMBER := '&VALOR';
--BEGIN
--IF  NOTA >= 8 AND NOTA <= 10 THEN
--dbms_output.put_line('VOCÊ PASSOU');
--ELSIF NOTA BETWEEN 7.9
   -- then dbms_output.put_line('VOCÊ ESTÁ NA MÉDIA');
    --else dbms_output.put_line('REPROVADO');
    --end if;
--END;

--CREATE TABLE ALUNO(RA CHAR(9),
--NOME VARCHAR2(50),
--CONSTRAINT ALUNO_PK PRIMARY KEY(RA));

--INSERT INTO ALUNO(RA,NOME) VALUES('111222333','ANTONIO ALVES');
--INSERT INTO ALUNO(RA,NOME) VALUES('222333444','BEATRIZ BERNADES');
--INSERT INTO ALUNO(RA,NOME) VALUES('333444555','CLAUDIO CARDOSO');
--COMMIT;

--DECLARE
--V_RA CHAR(9) := '444555666';
--V_NOME VARCHAR2(50) := 'DANIELA DOLORES';
--BEGIN
--INSERT INTO ALUNO(RA,NOME)VALUES(V_RA,V_NOME);
--END;

--DECLARE
--V_RA CHAR(9) := '333444555';
--v_NOME VARCHAR(50);
--BEGIN
--SELECT NOME INTO V_NOME FROM ALUNO WHERE RA = V_RA;
--DBMS_OUTPUT.PUT_LINE ('O nome do aluno é: ' || V_NOME);
--END;

--DECLARE 
--	V_RA CHAR(9) := '444555777'; 
--	V_NOME VARCHAR2(50) := 'Daniela Dorneles'; 
--BEGIN 
--	INSERT INTO ALUNO(RA,NOME) VALUES (V_RA,V_NOME); 
--END;

--DECLARE 
--	V_RA CHAR(9) := '111222777'; 
--	V_NOME VARCHAR2(50) := 'Antonio Rodrigues'; 
--BEGIN 
--	UPDATE ALUNO SET NOME = V_NOME WHERE RA = V_RA; 
--END;

--DECLARE 
--	V_RA CHAR(9) := '444555666'; 
--BEGIN 
--DELETE FROM ALUNO WHERE RA = V_RA; 
--END;

--SELECT * FROM VENDAS;
SET SERVEROUTPUT ON;
DECLARE
    v_pais VARCHAR2(30) := '&VALOR';
    total  NUMBER;
BEGIN
    SELECT
        COUNT(1),
        country into
        total,
        v_pais
    FROM
        vendas
    WHERE
        country = v_pais
    GROUP BY
        country;

    dbms_output.put_line('A QUANTIDADE DE PESDIDOS INFORMADO PARA O PAIS QUE É: '
                         || 'SÃO'
                         || total
                         || 'PEDIDOS');
END;





