﻿CREATE TABLE [GUSTO00001].[StokMaliyet] (
  [StokMaliyet_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  [ldAritmetikOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldSisDovizAritmetikOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldDovizAritmetikOrtalama] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldDevredenMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldDevredenTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdDevredenTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdDevredenTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikGirisMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari1] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari1] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari1] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti1] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari2] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari2] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari2] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti2] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari3] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari3] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari3] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti3] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari4] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari4] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari4] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari4] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari4] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti4] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari5] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari5] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari5] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari5] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari5] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti5] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari6] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari6] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari6] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari6] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari6] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti6] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari7] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari7] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari7] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari7] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari7] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti7] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari8] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari8] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari8] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari8] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari8] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti8] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari9] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari9] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari9] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari9] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari9] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti9] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari10] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari10] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari10] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari10] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari10] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti10] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari11] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari11] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari11] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari11] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari11] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti11] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisMiktari12] [decimal](22, 6) NULL DEFAULT (0),
  [ldAylikGirisTutari12] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdAylikGirisTutari12] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdAylikGirisTutari12] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikCikisMiktari12] [decimal](22, 6) NULL DEFAULT (0),
  [ldAyKapamaMaliyeti12] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokMaliyet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [StokIzDepoKey]
  ON [GUSTO00001].[StokMaliyet] ([pStokKodu], [pIzlemeKodu], [pDepoMaliyetKodu], [pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO