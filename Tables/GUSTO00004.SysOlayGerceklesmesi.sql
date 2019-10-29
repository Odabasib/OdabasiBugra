CREATE TABLE [GUSTO00004].[SysOlayGerceklesmesi] (
  [SysOlayGerceklesmesi_rowid] [int] IDENTITY,
  [nEventID] [int] NOT NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [dtOlusma] [smalldatetime] NULL,
  [tmOlusma] [int] NULL DEFAULT (0),
  [pHandled] [int] NULL DEFAULT (0),
  [pEventArgs] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SysOlayGerceklesmesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [nEventID]
  ON [GUSTO00004].[SysOlayGerceklesmesi] ([nEventID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO