CREATE TABLE [GUSTO00004].[ProjeOperasyon] (
  [ProjeOperasyon_rowid] [int] IDENTITY,
  [pProje] [int] NOT NULL DEFAULT (0),
  [nIslemSiraNo] [smallint] NULL DEFAULT (0),
  [pOperasyonKodu] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [dtPlanBaslamaTarihi] [smalldatetime] NULL,
  [dtPlanBitisTarihi] [smalldatetime] NULL,
  [tmPlanBaslamaZamani] [int] NULL DEFAULT (0),
  [tmPlanBitisZamani] [int] NULL DEFAULT (0),
  [ldTezgahSabitUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nTezgahSabitUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldTezgahDegUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nTezgahDegUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldIscilikSabitUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikSabitUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [ldIscilikDegUretimSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikDegUretimSureBirim] [tinyint] NULL DEFAULT (0),
  [nIsciSayisi] [tinyint] NULL DEFAULT (0),
  [nTur] [tinyint] NULL DEFAULT (0),
  [nBolum] [tinyint] NULL DEFAULT (0),
  [nIcKapak] [tinyint] NULL DEFAULT (0),
  [nOncelik1] [tinyint] NULL DEFAULT (0),
  [nOncelik2] [tinyint] NULL DEFAULT (0),
  [nOncelik3] [tinyint] NULL DEFAULT (0),
  [nOncelik4] [tinyint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeOperasyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pOperasyonKodu]
  ON [GUSTO00004].[ProjeOperasyon] ([pOperasyonKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pProje]
  ON [GUSTO00004].[ProjeOperasyon] ([pProje])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO