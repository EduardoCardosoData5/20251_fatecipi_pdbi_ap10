-- Active: 1744072411606@@127.0.0.1@5432@postgres

-- 1.1c - Gerar 10 inteiros aleatórios de 1 a 100
DO $$
DECLARE
  i INT;
BEGIN
  FOR i IN 1..10 LOOP
    RAISE NOTICE 'Número aleatório: %', trunc(random() * 100 + 1);
  END LOOP;
END $$;




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

