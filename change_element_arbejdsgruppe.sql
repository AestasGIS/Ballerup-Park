ALTER TABLE IF EXISTS elementer.element_flader_arbejdsgrupper
    DROP COLUMN IF EXISTS id,
    DROP CONSTRAINT IF EXISTS element_flader_arbejdsgrupper_pkey,
    DROP CONSTRAINT IF EXISTS element_flader_arbejdsgrupper_element_id_fk,
	DROP CONSTRAINT IF EXISTS element_flader_arbejdsgrupper_arbejdsgruppe_id_fk,
    ADD COLUMN id uuid DEFAULT gen_random_uuid (),
	ADD PRIMARY KEY (id),
    ADD FOREIGN KEY (arbejdsgruppe_id) REFERENCES arbejde.arbejdsgrupper (arbejdsgruppe_id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
    ADD FOREIGN KEY (element_id) REFERENCES elementer.element_flader (id)                   MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


ALTER TABLE IF EXISTS elementer.element_linjer_arbejdsgrupper
    DROP COLUMN IF EXISTS id,
    DROP CONSTRAINT IF EXISTS element_linjer_arbejdsgrupper_pkey,
    DROP CONSTRAINT IF EXISTS element_linjer_arbejdsgrupper_element_id_fk,
	DROP CONSTRAINT IF EXISTS element_linjer_arbejdsgrupper_arbejdsgruppe_id_fk,
    ADD COLUMN id uuid DEFAULT gen_random_uuid (),
	ADD PRIMARY KEY (id),
    ADD FOREIGN KEY (arbejdsgruppe_id) REFERENCES arbejde.arbejdsgrupper (arbejdsgruppe_id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
    ADD FOREIGN KEY (element_id) REFERENCES elementer.element_linjer (id)                   MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


ALTER TABLE IF EXISTS elementer.element_punkter_arbejdsgrupper
    DROP COLUMN IF EXISTS id,
    DROP CONSTRAINT IF EXISTS element_punkter_arbejdsgrupper_pkey,
    DROP CONSTRAINT IF EXISTS element_punkter_arbejdsgrupper_element_id_fk,
	DROP CONSTRAINT IF EXISTS element_punkter_arbejdsgrupper_arbejdsgruppe_id_fk,
    ADD COLUMN id uuid DEFAULT gen_random_uuid (),
	ADD PRIMARY KEY (id),
    ADD FOREIGN KEY (arbejdsgruppe_id) REFERENCES arbejde.arbejdsgrupper (arbejdsgruppe_id) MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED,
    ADD FOREIGN KEY (element_id) REFERENCES elementer.element_punkter (id)                   MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;
2278 5466