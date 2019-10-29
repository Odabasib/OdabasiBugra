CREATE TABLE [GUSTO00004].[SSKPrimleri] (
  [SSKPrimleri_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT ('I'),
  [pIsyeriId] [int] NOT NULL DEFAULT (0),
  [dtBasTar] [smalldatetime] NOT NULL,
  [ldAnalikSigIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldHastaSigIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldHastaSigCirakIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalulYasliOlumIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldSosGuvDesPrimIsvrOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldAnalikSigIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldHastaSigIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldHastaSigCirakOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldMalulYasliOlumIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldSosGuvDesPrimIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldGenelSaglikSigIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldGenelSaglikSigIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SSKPrimleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IsyeriTarih]
  ON [GUSTO00004].[SSKPrimleri] ([pIsyeriId], [cTur], [dtBasTar], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO