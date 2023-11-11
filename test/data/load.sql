DELETE FROM item;

INSERT INTO item (name, sellIn, quality) VALUES ('+5 Dexterity Vest', 10, 20);
INSERT INTO item (name, sellIn, quality) VALUES ('Aged Brie', 2, 0);
INSERT INTO item (name, sellIn, quality) VALUES ('Elixir of the Mongoose', 5, 7);
INSERT INTO item (name, sellIn, quality) VALUES ('Sulfuras, Hand of Ragnaros', 0, 80);
INSERT INTO item (name, sellIn, quality) VALUES ('Sulfuras, Hand of Ragnaros', -1, 80);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes to a TAFKAL80ETC concert', 15, 20);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes to a TAFKAL80ETC concert', 10, 49);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes to a TAFKAL80ETC concert', 5, 49);

-- this conjured item does not work properly yet
INSERT INTO item (name, sellIn, quality) VALUES ('Conjured Mana Cake', 3, 6);

COMMIT;


/*
Novo item "Conjured", diminuí a qualidade 2x mais rapido que os outros
INSERT INTO item (name, sellIn, quality) VALUES ('Conjured, Hand of Ragnaros', -1, 80);

UPDATE item
SET
    quality = quality - 2 
WHERE 1=1
    AND name = 'Conjured Mana Cake';
*/