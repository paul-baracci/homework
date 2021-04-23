ALTER TABLE article
DROP COLUMN article_content,
ADD COLUMN article_text VARCHAR(3000),
MODIFY article_text VARCHAR(600);

ALTER TABLE service
MODIFY service_price VARCHAR(20);