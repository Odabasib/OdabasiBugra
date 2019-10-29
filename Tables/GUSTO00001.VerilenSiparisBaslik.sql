CREATE TABLE [GUSTO00001].[VerilenSiparisBaslik] (
  [VerilenSiparisBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtTeslimTarihi] [smalldatetime] NULL,
  [tmTeslimZamani] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [pBayi] [int] NULL DEFAULT (0),
  [bFaturaBayiyeKesilecek] [bit] NULL DEFAULT (0),
  [cSiparisBilgiFarkli] [char](1) NULL DEFAULT (' '),
  [pSiparisBilgi] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [cTeslimatDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [dtKapatma] [smalldatetime] NULL,
  [pKapatanKullanici] [int] NULL DEFAULT (0),
  [cAcikKapali] [char](1) NULL DEFAULT (' '),
  [cSiparisDondurulmus] [char](1) NULL DEFAULT (' '),
  [dtSiparisDondurmaTarihi] [smalldatetime] NULL,
  [sSiparisDondurmaAciklama] [varchar](120) NULL DEFAULT (''),
  [pSiparisDonduranKullanici] [int] NULL DEFAULT (0),
  [cSevkEmrineAktarildi] [char](1) NULL DEFAULT ('H'),
  [cSiparisFormuOlusturuldu] [char](1) NULL DEFAULT ('H'),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenSiparisBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariSeriNoKey]
  ON [GUSTO00001].[VerilenSiparisBaslik] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelSeriNoKey]
  ON [GUSTO00001].[VerilenSiparisBaslik] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00001].[VerilenSiparisBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00001].[VerilenSiparisBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TeslimTarKey]
  ON [GUSTO00001].[VerilenSiparisBaslik] ([dtTeslimTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		BUĞRA ODABAŞI
-- Create date: 29.04.2019
-- Description:	Verilen Sipariş Belgesi Silindiği Taktirde Gusto.BPMFT_SATINALMASIPARIS Faaliyetinin Silinmesi İçin Tasarlanmıştır.
-- =============================================
CREATE TRIGGER [Trig_VerilenSiparisBaslik] 
   ON  [GUSTO00001].[VerilenSiparisBaslik]
   AFTER Delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @VerilenSiparisBaslik_Rowid int;

	select @VerilenSiparisBaslik_Rowid=VerilenSiparisBaslik_rowid from deleted;


	if exists (select * from Gusto.BPMFT_SATINALMASIPARIS where pVerilenSiparisBaslikRowid=@VerilenSiparisBaslik_Rowid) begin

		delete from Gusto.EPMFaaliyet where exists (select * from Gusto.BPMFT_SATINALMASIPARIS where PFAALIYET=EPMFAALIYET_ROWID and pVerilenSiparisBaslikRowid=@VerilenSiparisBaslik_Rowid);

	end

END
GO