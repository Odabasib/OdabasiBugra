CREATE TABLE [GUSTO00001].[EDIAktarimBaslik] (
  [EDIAktarimBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](50) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [cAktarimTuru] [char](1) NULL DEFAULT (' '),
  [pEDIGorev] [int] NULL DEFAULT (0),
  [sKaynakYolu] [varchar](255) NULL DEFAULT (''),
  [pPersonel] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIAktarimBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Aktarim]
  ON [GUSTO00001].[EDIAktarimBaslik] ([sSeri], [dtTarih], [lNo], [pEDIGorev])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [cAktarimTuru]
  ON [GUSTO00001].[EDIAktarimBaslik] ([cAktarimTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO