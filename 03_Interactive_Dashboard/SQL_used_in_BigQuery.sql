SELECT
  vuosi,
  kuukausi_nro,
  etuus,
  SUM(saaja_lkm) AS saajat_yhteensa,
  SUM(saaja_laskenta_lkm) AS saajat_laskenta_yhteensa,
  ROUND(SUM(maksettu_eur), 2) AS maksettu_yhteensa,
  ROUND(SUM(maksettu_laskenta_eur), 2) AS maksettu_laskenta_yhteensa
FROM `project-2a413b16-b2c2-4917-b71.Kela\_Dashboard\_Data.Kela\_Dashboard\_Table`
GROUP BY vuosi, kuukausi_nro, etuus
ORDER BY vuosi, kuukausi_nro, etuus;
