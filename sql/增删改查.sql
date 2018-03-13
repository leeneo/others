USE [sauna8_**]
GO

/****** Object:  Table [dbo].[wxIndexMenu]    Script Date: 11/21/2017 11:55:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[wxIndexMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Name] [varchar](50) NOT NULL,
	[Url] [varchar](50) NULL,
	[ImgUrl] [varchar](50) NULL,
	[IsActive] [varchar](1) NOT NULL,
	[SID] [int] NULL,
 CONSTRAINT [PK_wxIndexMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[wxIndexMenu] ADD  CONSTRAINT [DF_wxIndexMenu_IsActive]  DEFAULT ('Y') FOR [IsActive]
GO




select * from wxIndexMenu

insert into wxIndexMenu(name) values('预约')
insert into wxIndexMenu(name) values('会员')
insert into wxIndexMenu(name) values('账单')
insert into wxIndexMenu(name) values('其他')

insert into wxIndexMenu(PID,name,Url,ImgUrl) values('1','房间预订','/RoomList/RoomList','/images/img/room.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('1','技师预约','/Reservation/TechnicianList','/images/img/find.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('1','查询技师','/MissStatus/Index','/images/img/yuyue.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('1','套餐购买','/TicketType/TicketType','/images/img/tuangou.png')


insert into wxIndexMenu(PID,name,Url,ImgUrl) values('2','我的会员卡','/Home/MyMemberCard','/images/img/vip.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('2','办理会员卡','/Home/CardType','/images/img/banli.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('2','会员充值','/Home/Recharge','/images/img/charge.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('2','分享会员卡','/MemberCard/Index','/images/img/login.png')

insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','我的资料','/Home/MyInformation','/images/img/details.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','账单支付','/Home/Hand','/images/img/pay.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','我的订单','/NewOrder/Index','/images/img/order.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','微信商城','/Store/Index','/images/img/store.png')

insert into wxIndexMenu(PID,name,Url,ImgUrl) values('4','获赠列表','/TicketType/GiftList','/images/img/store.png')


select * from wxIndexMenu

insert into wxIndexMenu(id,name) values('5','其他')

insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','我的会员卡','/Home/MyMemberCard','/images/img/vip.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','办理会员卡','/Home/CardType','/images/img/banli.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','会员充值','/Home/Recharge','/images/img/charge.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('3','分享会员卡','/MemberCard/Index','/images/img/login.png')

insert into wxIndexMenu(PID,name,Url,ImgUrl) values('4','我的资料','/Home/MyInformation','/images/img/details.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('4','账单支付','/Home/Hand','/images/img/pay.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('4','我的订单','/NewOrder/Index','/images/img/order.png')
insert into wxIndexMenu(PID,name,Url,ImgUrl) values('5','获赠列表','/TicketType/GiftList','/images/img/store.png')

update wxIndexMenu set pID='19' where id='20'

delete from wxIndexMenu where pid=null and sid=null
delete from wxIndexMenu where ID=27 or ID=28