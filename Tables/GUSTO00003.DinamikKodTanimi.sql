CREATE TABLE [GUSTO00003].[DinamikKodTanimi] (
  [DinamikKodTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [sTanimAdi] [varchar](30) NULL DEFAULT (''),
  [pVarsayilan] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [cGirisZorunluMu] [char](1) NULL DEFAULT (' '),
  [bAdindaGorunsunMu] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [bGirisSerbestMi] [bit] NULL DEFAULT (0),
  [bMetin] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DinamikKodTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ModulAdKey]
  ON [GUSTO00003].[DinamikKodTanimi] ([nModul])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO