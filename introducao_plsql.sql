SET SERVEROUTPUT ON;

DECLARE
    --idade NUMBER;--
    --NOME VARCHAR2(30) := 'BRUNO';--
    --ENDERECO VARCHAR2(50) := '&DIGITE_O_ENDERE�O';--
    --SALARIO NUMBER := 1500;--
    --DOLAR FLOAT := 5.75;--
    CARRO_valor VARCHAR2(30):= '&Qual_o_valor_do_carro?';
    NUMERO_DE_PARCELA NUMBER := '&Digite_quantas_parcelas_para_quitar'; 
BEGIN
    --idade := 33;--
    --dbms_output.put_line('A IDADE INFORMADA �: ' || idade);--
    --dbms_output.put_line('MEU NOME �: ' || nome);--
    --dbms_output.put_line('SEU ENDERE�O �: ' || endereco);--
    --dbms_output.put_line('O SAL�RIO COM ACRESCIMO DE 25% �: ' || salario * 1.25);--
    --dbms_output.put_line('O VALOR DE 45 REAIS EM DOLAR �: ' || dolar * 45.00 );--
    dbms_output.put_line('QUANTIDADE DE PARCELA �: ' || numero_de_parcela ||'O VALOR DO CARRO �: '|| carro_valor *1.3  );
END;