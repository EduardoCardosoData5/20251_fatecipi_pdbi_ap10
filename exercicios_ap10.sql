-- Active: 1744072411606@@127.0.0.1@5432@postgres

-- 1.2 - Determinante de uma matriz 3x3 com a regra de Sarrus
-- 1.2 - Determinante 3x3 com regra de Sarrus (corrigido)
DO $$
DECLARE
  matriz INTEGER[];
  i INT;
  j INT;
  determinante INT;
BEGIN
  -- Inicializa a matriz com 9 elementos (1D)
  matriz := ARRAY[
    trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT,
    trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT,
    trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT, trunc(random() * 12 + 1)::INT
  ];

  RAISE NOTICE 'Matriz:';
  FOR i IN 0..2 LOOP
    RAISE NOTICE '% % %',
      matriz[1 + i*3],
      matriz[2 + i*3],
      matriz[3 + i*3];
  END LOOP;

  determinante :=
    matriz[1]*matriz[5]*matriz[9] +
    matriz[2]*matriz[6]*matriz[7] +
    matriz[3]*matriz[4]*matriz[8]
  -
    matriz[3]*matriz[5]*matriz[7] -
    matriz[1]*matriz[6]*matriz[8] -
    matriz[2]*matriz[4]*matriz[9];

  RAISE NOTICE 'Determinante: %', determinante;
END $$;




-- 1.1c - Gerar 10 inteiros aleatórios de 1 a 100
-- DO $$
-- DECLARE
--   i INT;
-- BEGIN
--   FOR i IN 1..10 LOOP
--     RAISE NOTICE 'Número aleatório: %', trunc(random() * 100 + 1);
--   END LOOP;
-- END $$;


-- 1.1b - Gerar 10 inteiros aleatórios de 20 a 50
-- DO $$
-- DECLARE
--   i INT;
-- BEGIN
--   FOR i IN 1..10 LOOP
--     RAISE NOTICE 'Número aleatório: %', trunc(random() * 31 + 20);
--   END LOOP;
-- END $$;


-- 1.1a - Gerar 10 inteiros aleatórios de -50 a 50
-- DO $$
-- DECLARE
--   i INT;
-- BEGIN
--   FOR i IN 1..10 LOOP
--     RAISE NOTICE 'Número aleatório: %', trunc(random() * 101 - 50);
--   END LOOP;
-- END $$;

