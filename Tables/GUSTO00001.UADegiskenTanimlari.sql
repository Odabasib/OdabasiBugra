CREATE TABLE [GUSTO00001].[UADegiskenTanimlari] (
  [UADegiskenTanimlari_rowid] [int] IDENTITY,
  [sDegiskenAdi] [varchar](499) NOT NULL DEFAULT (''),
  [nDegiskenTipi] [smallint] NOT NULL DEFAULT (0),
  [sVarsayilanSonuc] [varchar](499) NULL DEFAULT (''),
  [sAciklama] [varchar](499) NULL DEFAULT (''),
  [pUstDegisken] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UADegiskenTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO