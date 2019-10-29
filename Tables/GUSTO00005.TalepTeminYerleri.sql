CREATE TABLE [GUSTO00005].[TalepTeminYerleri] (
  [TalepTeminYerleri_rowid] [int] IDENTITY,
  [pTalep] [int] NULL DEFAULT (0),
  [cSaticiTuru] [char](1) NULL DEFAULT (' '),
  [pSaticiKodu] [int] NULL DEFAULT (0),
  [sSaticiAdi] [varchar](60) NULL DEFAULT (''),
  [sSaticiIletisim] [varchar](250) NULL DEFAULT (''),
  [sSaticininVerdigiKod] [varchar](41) NULL DEFAULT (''),
  [nTeminSuresi] [int] NULL DEFAULT (0),
  [nEnErkenTeslimatSuresi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TalepTeminYerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pTalep]
  ON [GUSTO00005].[TalepTeminYerleri] ([pTalep])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO