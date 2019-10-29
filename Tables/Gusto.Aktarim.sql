CREATE TABLE [Gusto].[Aktarim] (
  [Aktarim_rowid] [int] IDENTITY,
  [nFirmadan] [int] NOT NULL DEFAULT (0),
  [nFirmaya] [int] NOT NULL DEFAULT (0),
  [dtAktarim] [smalldatetime] NOT NULL,
  [tmAktarim] [int] NOT NULL DEFAULT (0),
  [sVersiyon] [varchar](25) NULL DEFAULT (''),
  [bYTLAktarimiMi] [bit] NOT NULL DEFAULT (1),
  PRIMARY KEY CLUSTERED ([Aktarim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [AktarimFirmaBilgisiKey_KeyObj]
  ON [Gusto].[Aktarim] ([nFirmadan], [nFirmaya], [bYTLAktarimiMi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO