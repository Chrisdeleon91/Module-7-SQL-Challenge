-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/05zmh0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Transaction] (
    [id] int  NOT NULL ,
    [date] TIMESTAMP  NOT NULL ,
    [amount] float  NOT NULL ,
    [card] VARCHAR(20)  NOT NULL ,
    [id_merchant] int  NOT NULL ,
    CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [CreditCard] (
    [card] VARCHAR(20)  NOT NULL ,
    [cardholder_id] int  NOT NULL ,
    CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED (
        [card] ASC
    )
)

CREATE TABLE [CardHolder] (
    [id] int  NOT NULL ,
    [name] VARCHAR(20)  NOT NULL ,
    CONSTRAINT [PK_CardHolder] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [Merchant] (
    [id] int  NOT NULL ,
    [name] VARCHAR(40)  NOT NULL ,
    [id_merchant_category] int  NOT NULL ,
    CONSTRAINT [PK_Merchant] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [MerchantCategory] (
    [id] int  NOT NULL ,
    [name] VARCHAR(20)  NOT NULL ,
    CONSTRAINT [PK_MerchantCategory] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [Transaction] WITH CHECK ADD CONSTRAINT [FK_Transaction_card] FOREIGN KEY([card])
REFERENCES [CreditCard] ([card])

ALTER TABLE [Transaction] CHECK CONSTRAINT [FK_Transaction_card]

ALTER TABLE [Transaction] WITH CHECK ADD CONSTRAINT [FK_Transaction_id_merchant] FOREIGN KEY([id_merchant])
REFERENCES [Merchant] ([id])

ALTER TABLE [Transaction] CHECK CONSTRAINT [FK_Transaction_id_merchant]

ALTER TABLE [CardHolder] WITH CHECK ADD CONSTRAINT [FK_CardHolder_id] FOREIGN KEY([id])
REFERENCES [CreditCard] ([cardholder_id])

ALTER TABLE [CardHolder] CHECK CONSTRAINT [FK_CardHolder_id]

ALTER TABLE [MerchantCategory] WITH CHECK ADD CONSTRAINT [FK_MerchantCategory_id] FOREIGN KEY([id])
REFERENCES [Merchant] ([id_merchant_category])

ALTER TABLE [MerchantCategory] CHECK CONSTRAINT [FK_MerchantCategory_id]

COMMIT TRANSACTION QUICKDBD