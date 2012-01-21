-- add column for field <Name>k__BackingField
ALTER TABLE [cabin] ADD [cabin_name_id] INT NULL
go

-- add column for field <Type>k__BackingField
ALTER TABLE [cabin] ADD [cabin_type_id] INT NULL
go

-- dropping unknown column [<_name>k___backing_field]
ALTER TABLE [cabin] DROP COLUMN [<_name>k___backing_field]
go

-- dropping unknown column [<_type>k___backing_field]
ALTER TABLE [cabin] DROP COLUMN [<_type>k___backing_field]
go

-- DormaDL.CabinName
CREATE TABLE [cabin_name] (
    [cabin_name_id] INT NOT NULL,           -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_cabin_name] PRIMARY KEY ([cabin_name_id])
)
go

-- System.Collections.Generic.IList`1[[DormaDL.CabinType, DormaDL, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] DormaDL.CabinName.<Cabintypes>k__BackingField
CREATE TABLE [cabin_name_cabin_type] (
    [cabin_name_id] INT NOT NULL,
    [seq] INT NOT NULL,                     -- <sequence>
    [cabin_type_id] INT NULL,
    CONSTRAINT [pk_cabin_name_cabin_type] PRIMARY KEY ([cabin_name_id], [seq])
)
go

-- DormaDL.CabinQuote
CREATE TABLE [cabin_quote] (
    [cabin_quote_id] INT NOT NULL,          -- <internal-pk>
    [cabin_id] INT NULL,                    -- <Cabin>k__BackingField
    [<_height>k___backing_field] FLOAT NOT NULL, -- <Height>k__BackingField
    [<_length>k___backing_field] FLOAT NOT NULL, -- <Length>k__BackingField
    [<_width>k___backing_field] FLOAT NOT NULL, -- <Width>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_cabin_quote] PRIMARY KEY ([cabin_quote_id])
)
go

-- DormaDL.CabinType
CREATE TABLE [cabin_type] (
    [cabin_type_id] INT NOT NULL,           -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_cabin_type] PRIMARY KEY ([cabin_type_id])
)
go

-- DormaDL.Door
CREATE TABLE [door] (
    [door_id] INT NOT NULL,                 -- <internal-pk>
    [door_hardware_sub_type_id] INT NULL,   -- <HardwareSubType>k__BackingField
    [door_hardware_type_id] INT NULL,       -- <HardwareType>k__BackingField
    [<_image_url>k___backing_field] VARCHAR(255) NULL, -- <ImageUrl>k__BackingField
    [door_material_id] INT NULL,            -- <Material>k__BackingField
    [door_opening_option_id] INT NULL,      -- <OpeningsOption>k__BackingField
    [door_position_option_id] INT NULL,     -- <PositionOptions>k__BackingField
    [door_type_id] INT NULL,                -- <Type>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door] PRIMARY KEY ([door_id])
)
go

-- DormaDL.DoorHardwareSubType
CREATE TABLE [door_hardware_sub_type] (
    [door_hardware_sub_type_id] INT NOT NULL, -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_hardware_sub_type] PRIMARY KEY ([door_hardware_sub_type_id])
)
go

-- DormaDL.DoorHardwareType
CREATE TABLE [door_hardware_type] (
    [door_hardware_type_id] INT NOT NULL,   -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_hardware_type] PRIMARY KEY ([door_hardware_type_id])
)
go

-- DormaDL.DoorMaterial
CREATE TABLE [door_material] (
    [door_material_id] INT NOT NULL,        -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_material] PRIMARY KEY ([door_material_id])
)
go

-- DormaDL.DoorOpeningOption
CREATE TABLE [door_opening_option] (
    [door_opening_option_id] INT NOT NULL,  -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_opening_option] PRIMARY KEY ([door_opening_option_id])
)
go

-- DormaDL.DoorPositionOption
CREATE TABLE [door_position_option] (
    [door_position_option_id] INT NOT NULL, -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_position_option] PRIMARY KEY ([door_position_option_id])
)
go

-- DormaDL.DoorType
CREATE TABLE [door_type] (
    [door_type_id] INT NOT NULL,            -- <internal-pk>
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_door_type] PRIMARY KEY ([door_type_id])
)
go

ALTER TABLE [cabin_name_cabin_type] ADD CONSTRAINT [ref_cbn_nm_cbn_type_cabin_name] FOREIGN KEY ([cabin_name_id]) REFERENCES [cabin_name]([cabin_name_id])
go

ALTER TABLE [cabin_name_cabin_type] ADD CONSTRAINT [ref_cbn_nm_cbn_type_cabin_type] FOREIGN KEY ([cabin_type_id]) REFERENCES [cabin_type]([cabin_type_id])
go

