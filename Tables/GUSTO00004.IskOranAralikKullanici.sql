﻿CREATE TABLE [GUSTO00004].[IskOranAralikKullanici] (
  [IskOranAralikKullanici_rowid] [int] IDENTITY,
  [pIskontoOranAralik] [int] NOT NULL DEFAULT (0),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IskOranAralikKullanici_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [OranAralikKullanici]
  ON [GUSTO00004].[IskOranAralikKullanici] ([pIskontoOranAralik], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO