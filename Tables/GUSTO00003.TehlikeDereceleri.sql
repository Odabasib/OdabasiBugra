CREATE TABLE [GUSTO00003].[TehlikeDereceleri] (
  [TehlikeDereceleri_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NOT NULL,
  [nTehlikeSinifi] [tinyint] NOT NULL DEFAULT (0),
  [nTehlikeDerece] [tinyint] NOT NULL DEFAULT (0),
  [ldIsKazMesHastIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsKazMesHastIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TehlikeDereceleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TehlikeDerecesi_SinifDerece]
  ON [GUSTO00003].[TehlikeDereceleri] ([dtBasTar], [nTehlikeSinifi], [nTehlikeDerece], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO