
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/26/2015 11:33:09
-- Generated from EDMX file: C:\Users\Daniel\Documents\GitHub\MusicDolphin\MusicDolphin\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MusicDolphinDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ALBUM_ARTIST_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Album] DROP CONSTRAINT [FK_ALBUM_ARTIST_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_ARTIST_RECORDLABEL_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Artist] DROP CONSTRAINT [FK_ARTIST_RECORDLABEL_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_REV_ALBUMNR_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_REV_ALBUMNR_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_REV_ARTISTNR_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_REV_ARTISTNR_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_REV_COMPANYNR_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_REV_COMPANYNR_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_REV_TRACKID_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_REV_TRACKID_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_REV_USERNAME_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_REV_USERNAME_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_TRACK_ALBUM_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Track] DROP CONSTRAINT [FK_TRACK_ALBUM_FK];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Album]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Album];
GO
IF OBJECT_ID(N'[dbo].[Artist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Artist];
GO
IF OBJECT_ID(N'[dbo].[RecordLabel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecordLabel];
GO
IF OBJECT_ID(N'[dbo].[Review]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Review];
GO
IF OBJECT_ID(N'[dbo].[Track]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Track];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Album'
CREATE TABLE [dbo].[Album] (
    [albumNr] int IDENTITY(1,1) NOT NULL,
    [albumName] varchar(30)  NULL,
    [year] varchar(30)  NULL,
    [artistNr] int  NULL
);
GO

-- Creating table 'Artist'
CREATE TABLE [dbo].[Artist] (
    [artistNr] int IDENTITY(1,1) NOT NULL,
    [artistName] varchar(50)  NULL,
    [companyNr] int  NULL
);
GO

-- Creating table 'RecordLabel'
CREATE TABLE [dbo].[RecordLabel] (
    [companyNr] int IDENTITY(1,1) NOT NULL,
    [companyName] varchar(50)  NULL,
    [picture] varchar(250)  NULL
);
GO

-- Creating table 'Review'
CREATE TABLE [dbo].[Review] (
    [revNr] int IDENTITY(1,1) NOT NULL,
    [date] varchar(20)  NULL,
    [rating] int  NULL,
    [comments] varchar(300)  NULL,
    [companyNr] int  NULL,
    [artistNr] int  NULL,
    [albumNr] int  NULL,
    [trackID] int  NULL,
    [username] varchar(50)  NULL
);
GO

-- Creating table 'Track'
CREATE TABLE [dbo].[Track] (
    [trackID] int IDENTITY(1,1) NOT NULL,
    [title] varchar(50)  NULL,
    [length] varchar(30)  NULL,
    [year] varchar(30)  NULL,
    [albumNr] int  NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [username] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [albumNr] in table 'Album'
ALTER TABLE [dbo].[Album]
ADD CONSTRAINT [PK_Album]
    PRIMARY KEY CLUSTERED ([albumNr] ASC);
GO

-- Creating primary key on [artistNr] in table 'Artist'
ALTER TABLE [dbo].[Artist]
ADD CONSTRAINT [PK_Artist]
    PRIMARY KEY CLUSTERED ([artistNr] ASC);
GO

-- Creating primary key on [companyNr] in table 'RecordLabel'
ALTER TABLE [dbo].[RecordLabel]
ADD CONSTRAINT [PK_RecordLabel]
    PRIMARY KEY CLUSTERED ([companyNr] ASC);
GO

-- Creating primary key on [revNr] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [PK_Review]
    PRIMARY KEY CLUSTERED ([revNr] ASC);
GO

-- Creating primary key on [trackID] in table 'Track'
ALTER TABLE [dbo].[Track]
ADD CONSTRAINT [PK_Track]
    PRIMARY KEY CLUSTERED ([trackID] ASC);
GO

-- Creating primary key on [username] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([username] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [artistNr] in table 'Album'
ALTER TABLE [dbo].[Album]
ADD CONSTRAINT [FK_ALBUM_ARTIST_FK]
    FOREIGN KEY ([artistNr])
    REFERENCES [dbo].[Artist]
        ([artistNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ALBUM_ARTIST_FK'
CREATE INDEX [IX_FK_ALBUM_ARTIST_FK]
ON [dbo].[Album]
    ([artistNr]);
GO

-- Creating foreign key on [albumNr] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [FK_REV_ALBUMNR_FK]
    FOREIGN KEY ([albumNr])
    REFERENCES [dbo].[Album]
        ([albumNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_REV_ALBUMNR_FK'
CREATE INDEX [IX_FK_REV_ALBUMNR_FK]
ON [dbo].[Review]
    ([albumNr]);
GO

-- Creating foreign key on [albumNr] in table 'Track'
ALTER TABLE [dbo].[Track]
ADD CONSTRAINT [FK_TRACK_ALBUM_FK]
    FOREIGN KEY ([albumNr])
    REFERENCES [dbo].[Album]
        ([albumNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TRACK_ALBUM_FK'
CREATE INDEX [IX_FK_TRACK_ALBUM_FK]
ON [dbo].[Track]
    ([albumNr]);
GO

-- Creating foreign key on [companyNr] in table 'Artist'
ALTER TABLE [dbo].[Artist]
ADD CONSTRAINT [FK_ARTIST_RECORDLABEL_FK]
    FOREIGN KEY ([companyNr])
    REFERENCES [dbo].[RecordLabel]
        ([companyNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ARTIST_RECORDLABEL_FK'
CREATE INDEX [IX_FK_ARTIST_RECORDLABEL_FK]
ON [dbo].[Artist]
    ([companyNr]);
GO

-- Creating foreign key on [artistNr] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [FK_REV_ARTISTNR_FK]
    FOREIGN KEY ([artistNr])
    REFERENCES [dbo].[Artist]
        ([artistNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_REV_ARTISTNR_FK'
CREATE INDEX [IX_FK_REV_ARTISTNR_FK]
ON [dbo].[Review]
    ([artistNr]);
GO

-- Creating foreign key on [companyNr] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [FK_REV_COMPANYNR_FK]
    FOREIGN KEY ([companyNr])
    REFERENCES [dbo].[RecordLabel]
        ([companyNr])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_REV_COMPANYNR_FK'
CREATE INDEX [IX_FK_REV_COMPANYNR_FK]
ON [dbo].[Review]
    ([companyNr]);
GO

-- Creating foreign key on [trackID] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [FK_REV_TRACKID_FK]
    FOREIGN KEY ([trackID])
    REFERENCES [dbo].[Track]
        ([trackID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_REV_TRACKID_FK'
CREATE INDEX [IX_FK_REV_TRACKID_FK]
ON [dbo].[Review]
    ([trackID]);
GO

-- Creating foreign key on [username] in table 'Review'
ALTER TABLE [dbo].[Review]
ADD CONSTRAINT [FK_REV_USERNAME_FK]
    FOREIGN KEY ([username])
    REFERENCES [dbo].[User]
        ([username])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_REV_USERNAME_FK'
CREATE INDEX [IX_FK_REV_USERNAME_FK]
ON [dbo].[Review]
    ([username]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------