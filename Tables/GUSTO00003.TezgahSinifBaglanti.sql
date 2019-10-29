CREATE TABLE [GUSTO00003].[TezgahSinifBaglanti] (
  [TezgahSinifBaglanti_rowid] [int] IDENTITY,
  [pTezgahKodu] [int] NOT NULL DEFAULT (0),
  [pTezgahSinifiKodu] [int] NOT NULL DEFAULT (0),
  [nOncelikKodu] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TezgahSinifBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pTezgahKodu]
  ON [GUSTO00003].[TezgahSinifBaglanti] ([pTezgahKodu], [nOncelikKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pTezgahSinifiKodu]
  ON [GUSTO00003].[TezgahSinifBaglanti] ([pTezgahSinifiKodu], [nOncelikKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO