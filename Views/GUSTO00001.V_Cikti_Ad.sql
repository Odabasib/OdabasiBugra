﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_Cikti_Ad] as  
select alsatKulTan_rowid,pKulTanTanim,sAd from GUSTO00001.alsatKulTan where pKulTanTanim = 6
GO