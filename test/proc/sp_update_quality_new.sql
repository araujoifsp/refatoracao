DELIMITER //

CREATE PROCEDURE sp_update_itens_new()
BEGIN
    -- Atualiza a qualidade dos itens

		UPDATE item
		SET
			quality = quality - 1
		WHERE 1=1
			AND name IN('+5 Dexterity Vest','Elixir of the Mongoose')
			AND quality > 0
		;

		UPDATE item
		SET
			quality = quality + 1
		WHERE  1=1
		  AND quality < 50
		  AND name = 'Backstage passes to a TAFKAL80ETC concert'
		  AND sellIn < 11
		;

		UPDATE item
		SET
			quality = quality + 1
		WHERE  1=1
		  AND quality < 50
		  AND name = 'Backstage passes to a TAFKAL80ETC concert'
		  AND sellIn < 6
		;

		UPDATE item
		SET
			sellIn = sellIn - 1
		WHERE  1=1
		  AND  name <> 'Sulfuras, Hand of Ragnaros'
		;

		UPDATE item
		SET
			quality = quality - 1
		WHERE  1=1
		  AND sellIn < 0
		  AND quality > 0
		  AND name IN('+5 Dexterity Vest','Elixir of the Mongoose')
		;

		UPDATE item
		SET
			quality = quality - quality
		WHERE  1=1
		  AND sellIn < 0
		  AND name = 'Backstage passes to a TAFKAL80ETC concert'
		;

		UPDATE item
		SET
			quality = quality + 1
		WHERE  1=1
		  AND sellIn < 0
		  AND name = 'Aged Brie'
		  AND quality < 50
		;

		UPDATE item
		SET
			quality = quality - 2 
		WHERE 1=1
	      AND name = 'Conjured Mana Cake'
		  AND quality > 0
		;

		COMMIT;
    
	SELECT *
	  FROM gilded_rose.item;
  
    
END //

DELIMITER ;