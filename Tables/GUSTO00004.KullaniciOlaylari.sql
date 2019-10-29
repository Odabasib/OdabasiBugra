CREATE TABLE [GUSTO00004].[KullaniciOlaylari] (
  [KullaniciOlaylari_rowid] [int] IDENTITY,
  [nEventID] [int] NOT NULL DEFAULT (0),
  [sOlayAdi] [varchar](255) NULL DEFAULT (''),
  [bPasif] [bit] NULL DEFAULT (0),
  [dtOlusma] [smalldatetime] NULL,
  [tmOlusma] [int] NULL DEFAULT (0),
  [bSqlResult] [bit] NULL DEFAULT (0),
  [pOlayDetayi] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([KullaniciOlaylari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO