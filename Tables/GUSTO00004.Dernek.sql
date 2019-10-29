CREATE TABLE [GUSTO00004].[Dernek] (
  [Dernek_rowid] [int] IDENTITY,
  [sDernekKodu] [varchar](20) NULL DEFAULT (''),
  [sDernekAdi] [varchar](60) NULL DEFAULT (''),
  [sDernekAdresi] [varchar](100) NULL DEFAULT (''),
  [pUlke] [int] NULL DEFAULT (0),
  [pSehir] [int] NULL DEFAULT (0),
  [sTelefon1] [varchar](20) NULL DEFAULT (''),
  [sTelefon2] [varchar](20) NULL DEFAULT (''),
  [sFaks] [varchar](20) NULL DEFAULT (''),
  [sWebAdresi] [varchar](50) NULL DEFAULT (''),
  [cSempatikMi] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Dernek_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sDernekKodu]
  ON [GUSTO00004].[Dernek] ([sDernekKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO