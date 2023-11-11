--Esse script deve ser executado ao final de cada dia, com o inúito de atualizar o valor dos items conforme a numero de dias que temos para vendelo

UPDATE item
SET
    quality = quality - 1
WHERE 1=1
    AND ( name <> 'Aged Brie'  AND  name <> 'Backstage passes to a TAFKAL80ETC concert')
    AND quality > 0
    AND name <> 'Sulfuras, Hand of Ragnaros'
;
--Caso o item seja diferente de sulfuras, Aged Brie, Backstage passes to a TAFKAL80ETC concert e a qualidade seja maior que 0, o valor da qualidade será reduzido para 1
--
--erro observado: não há necessidade de um terceiro and pois essa 

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND  NOT  ( name <> 'Aged Brie'  AND  name <> 'Backstage passes to a TAFKAL80ETC concert')
  AND quality < 50
  AND name = 'Backstage passes to a TAFKAL80ETC concert'
  AND sellIn < 11
  AND quality < 50 --mesma condição aparecendo duas vezes
;
--esse update serve apenas para o Backstage passes, portando o primeiro and é totalmente desnecessário

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND  NOT  ( name <> 'Aged Brie'  AND  name <> 'Backstage passes to a TAFKAL80ETC concert') -- name IN('Aged Brie','Backstage passes to a TAFKAL80ETC concert')
  AND quality < 50
  AND name = 'Backstage passes to a TAFKAL80ETC concert'
  AND sellIn < 6
  AND quality < 50 --mesma condição aparecendo duas vezes
;

UPDATE item
SET
    sellIn = sellIn - 1
WHERE  1=1
  AND  name <> 'Sulfuras, Hand of Ragnaros'
;
--Caso o item seja diferente de sulfuras, o prazo para vendelo será reduzido, como sulfuras é um item lendario, ele não perde valor com o tempo e sua qualidade é sempre 80
--

UPDATE item
SET
    quality = quality - 1
WHERE  1=1
  AND sellIn < 0
  AND name <> 'Aged Brie'
  AND name <> 'Backstage passes to a TAFKAL80ETC concert'
  AND quality > 0
  AND name <> 'Sulfuras, Hand of Ragnaros'
--AND name IN('+5 Dexterity Vest','Conjured Mana Cake','Elixir of the Mongoose')
--AND NAME NOT IN('Aged Brie','Backstage passes to a TAFKAL80ETC concert','Sulfuras, Hand of Ragnaros')
;
--problema observado: mais ANDs do que o necessario

UPDATE item
SET
    quality = quality - quality
WHERE  1=1
  AND sellIn < 0
  AND name <> 'Aged Brie'
  AND NOT (name <> 'Backstage passes to a TAFKAL80ETC concert')
;
-- O terceiro and está negando a diferença, é mais facil utilizar um operador e igualdade, isso torna o segundo and desnecessário

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND sellIn < 0
  AND NOT (name <> 'Aged Brie')
  AND quality < 50
  AND name <> 'Sulfuras, Hand of Ragnaros'
;

COMMIT;

--No segundo set utilizar operador de igualdade ao invés de NOT <>