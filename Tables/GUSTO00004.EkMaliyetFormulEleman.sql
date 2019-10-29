CREATE TABLE [GUSTO00004].[EkMaliyetFormulEleman] (
  [EkMaliyetFormulEleman_rowid] [int] IDENTITY,
  [pEkMaliyetTanimi] [int] NULL DEFAULT (0),
  [pKaynak1] [int] NULL DEFAULT (0),
  [ldSerbestTutar1] [decimal](22, 2) NULL DEFAULT (0),
  [nTur1] [smallint] NULL DEFAULT (0),
  [nIslem1] [smallint] NULL DEFAULT (0),
  [pKaynak2] [int] NULL DEFAULT (0),
  [ldSerbestTutar2] [decimal](22, 2) NULL DEFAULT (0),
  [nTur2] [smallint] NULL DEFAULT (0),
  [nIslem2] [smallint] NULL DEFAULT (0),
  [pKaynak3] [int] NULL DEFAULT (0),
  [ldSerbestTutar3] [decimal](22, 2) NULL DEFAULT (0),
  [nTur3] [smallint] NULL DEFAULT (0),
  [nIslem3] [smallint] NULL DEFAULT (0),
  [ldSatir] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkMaliyetFormulEleman_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEkMaliyetTanimi]
  ON [GUSTO00004].[EkMaliyetFormulEleman] ([pEkMaliyetTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO