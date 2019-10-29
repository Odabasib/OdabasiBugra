CREATE TABLE [GUSTO00004].[KKMSABaslik] (
  [KKMSABaslik_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [pKontrolKrkt] [int] NULL DEFAULT (0),
  [pHazirlayan] [int] NULL DEFAULT (0),
  [pOlcuBirimi] [int] NULL DEFAULT (0),
  [pOlcumCihazi] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sSeri] [varchar](50) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [ldTolerans] [decimal](22, 2) NULL DEFAULT (0),
  [nOlcumcuSayisi] [smallint] NULL DEFAULT (0),
  [nDenemeSayisi] [smallint] NULL DEFAULT (0),
  [nParcaSayisi] [smallint] NULL DEFAULT (0),
  [ldEV] [decimal](22, 4) NULL DEFAULT (0),
  [ldAV] [decimal](22, 4) NULL DEFAULT (0),
  [ldGRR] [decimal](22, 4) NULL DEFAULT (0),
  [ldPV] [decimal](22, 4) NULL DEFAULT (0),
  [ldTV] [decimal](22, 4) NULL DEFAULT (0),
  [ldNdc] [decimal](22, 4) NULL DEFAULT (0),
  [ldRortort] [decimal](22, 4) NULL DEFAULT (0),
  [ldXdifort] [decimal](22, 4) NULL DEFAULT (0),
  [ldRp] [decimal](22, 4) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKMSABaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [lNo]
  ON [GUSTO00004].[KKMSABaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHazirlayan]
  ON [GUSTO00004].[KKMSABaslik] ([pHazirlayan])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKontrolKrkt]
  ON [GUSTO00004].[KKMSABaslik] ([pKontrolKrkt])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOlcumCihazi]
  ON [GUSTO00004].[KKMSABaslik] ([pOlcumCihazi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00004].[KKMSABaslik] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sSeri]
  ON [GUSTO00004].[KKMSABaslik] ([sSeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO