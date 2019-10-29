CREATE TABLE [GUSTO00004].[OdemeKosullariVadesi] (
  [OdemeKosullariVadesi_rowid] [int] IDENTITY,
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [nSira] [smallint] NULL DEFAULT (0),
  [fYuzdeKac] [real] NULL DEFAULT (0.000000),
  [nSure] [smallint] NULL DEFAULT (0),
  [cGunAy] [char](1) NULL DEFAULT (' '),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OdemeKosullariVadesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [OdemeKosuluSira]
  ON [GUSTO00004].[OdemeKosullariVadesi] ([pOdemeKosulu], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO