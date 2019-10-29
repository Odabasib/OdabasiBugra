CREATE TABLE [GUSTO00004].[EkMaliyetTanimi] (
  [EkMaliyetTanimi_rowid] [int] IDENTITY,
  [sAdi] [varchar](50) NOT NULL DEFAULT (''),
  [sEkMaliyetAciklamasi] [varchar](50) NOT NULL DEFAULT (''),
  [pUstSatir] [int] NULL DEFAULT (0),
  [nIslemTuru] [smallint] NOT NULL DEFAULT (0),
  [ldIslemTutari] [decimal](22, 2) NULL DEFAULT (0),
  [bGenelSablon] [bit] NULL DEFAULT (0),
  [bTumStoklar] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkMaliyetTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sEkMaliyetAdi]
  ON [GUSTO00004].[EkMaliyetTanimi] ([sAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO