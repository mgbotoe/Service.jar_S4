.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Item_RowId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Item_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Item_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Item_Width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Item_Height"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Item_Weight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Item_Bg_Color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Item_Gravity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Item_TxtColor_or_PollingInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Item_Txt_or_ImgPath"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Item_TxtStyle_or_ScaleType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Item_TxtSize"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Item_Url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Item_Orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Item_PackageName"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Item_Attributes"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Item_Layer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Item_ParentId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;
    .registers 18

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v8

    const/4 v2, 0x0

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x10

    aget-object v10, v10, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x11

    aget-object v10, v10, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getUpdatedFields()[I

    move-result-object v5

    if-eqz v5, :cond_39

    array-length v10, v5

    if-nez v10, :cond_3b

    :cond_39
    move-object v1, v0

    :goto_3a
    return-object v1

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    array-length v10, v5

    if-ge v3, v10, :cond_1b1

    if-nez v2, :cond_1b1

    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_1b8

    packed-switch v8, :pswitch_data_1d6

    const/4 v2, 0x1

    const-string v10, "LSO"

    const-string v11, "unknown LSOItem"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :sswitch_54
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :sswitch_61
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_51

    :sswitch_72
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_51

    :sswitch_83
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWeight()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_51

    :sswitch_94
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getBgColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_51

    :sswitch_a5
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_51

    :sswitch_b6
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xf

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_51

    :pswitch_c8
    move-object v7, p1

    check-cast v7, Landroid/app/enterprise/lso/LSOItemText;

    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_1e2

    goto :goto_51

    :sswitch_d1
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :sswitch_e0
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    :sswitch_f3
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextStyle()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    :sswitch_106
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextSizeAsFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_51

    :pswitch_119
    move-object v6, p1

    check-cast v6, Landroid/app/enterprise/lso/LSOItemImage;

    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_1f4

    goto/16 :goto_51

    :sswitch_123
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :sswitch_132
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    :sswitch_145
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getPollingInterval()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_51

    :pswitch_165
    move-object v4, p1

    check-cast v4, Landroid/app/enterprise/lso/LSOItemContainer;

    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_202

    goto/16 :goto_51

    :sswitch_16f
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xd

    aget-object v11, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getOrientation()Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    move-result-object v10

    sget-object v12, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v10, v12, :cond_196

    const/4 v10, 0x0

    :goto_17e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_51

    :sswitch_187
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :cond_196
    const/4 v10, 0x1

    goto :goto_17e

    :pswitch_198
    move-object v9, p1

    check-cast v9, Landroid/app/enterprise/lso/LSOItemWidget;

    aget v10, v5, v3

    packed-switch v10, :pswitch_data_20c

    goto/16 :goto_51

    :pswitch_1a2
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v10, v10, v11

    invoke-virtual {v9}, Landroid/app/enterprise/lso/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :cond_1b1
    if-eqz v2, :cond_1b4

    const/4 v0, 0x0

    :cond_1b4
    move-object v1, v0

    goto/16 :goto_3a

    nop

    :sswitch_data_1b8
    .sparse-switch
        0x1 -> :sswitch_54
        0x2 -> :sswitch_61
        0x4 -> :sswitch_72
        0x8 -> :sswitch_83
        0x10 -> :sswitch_94
        0x20 -> :sswitch_a5
        0x40 -> :sswitch_b6
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x2
        :pswitch_c8
        :pswitch_119
        :pswitch_165
        :pswitch_198
    .end packed-switch

    :sswitch_data_1e2
    .sparse-switch
        0x80 -> :sswitch_d1
        0x100 -> :sswitch_e0
        0x200 -> :sswitch_106
        0x400 -> :sswitch_f3
    .end sparse-switch

    :sswitch_data_1f4
    .sparse-switch
        0x80 -> :sswitch_123
        0x100 -> :sswitch_145
        0x200 -> :sswitch_132
    .end sparse-switch

    :sswitch_data_202
    .sparse-switch
        0x80 -> :sswitch_16f
        0x100 -> :sswitch_187
    .end sparse-switch

    :pswitch_data_20c
    .packed-switch 0x80
        :pswitch_1a2
    .end packed-switch
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 8

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_2c

    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_2c
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .registers 6

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v2, "ADMIN_REF"

    const-string v3, "policyName"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Configured admin UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9

    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_5a

    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5a
    return-wide v1
.end method

.method private loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V
    .registers 14

    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xd

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_17
    if-eqz v5, :cond_1e

    sget-object v6, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->setOrientation(Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;)V

    :cond_1e
    const-string v6, "LSO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoadContainerData -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "LOCKSCREEN_OVERLAY"

    const-string v8, "Item_ParentId"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_52

    :goto_51
    return-void

    :cond_52
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :cond_5c
    const/4 v4, 0x0

    :cond_5d
    :goto_5d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_76

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v4, v6

    invoke-static {v4}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    goto :goto_5d

    :cond_76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_51
.end method

.method private loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V
    .registers 9

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemImage;->setScaleType(I)V

    :cond_1d
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/app/enterprise/lso/LSOItemImage;->setURL(Ljava/lang/String;J)V

    :cond_35
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadImageData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V
    .registers 10

    const/4 v6, -0x1

    const/16 v5, -0x63

    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setId(Ljava/lang/String;)V

    :cond_d
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v5, :cond_17

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setWidth(I)V

    :cond_17
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v5, :cond_21

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setHeight(I)V

    :cond_21
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2e

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    :cond_2e
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v6, :cond_38

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setBgColor(I)V

    :cond_38
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5c

    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadItemData -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    return-void

    :cond_5c
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v6, :cond_66

    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    :cond_66
    const/16 v4, 0xf

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/enterprise/lso/LSOItemData;->setAttrs(Landroid/app/enterprise/lso/LSOAttributeSet;)V

    :cond_75
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_96

    goto :goto_5b

    :pswitch_7d
    check-cast p1, Landroid/app/enterprise/lso/LSOItemText;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V

    goto :goto_5b

    :pswitch_83
    check-cast p1, Landroid/app/enterprise/lso/LSOItemImage;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_5b

    :pswitch_89
    check-cast p1, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_5b

    :pswitch_8f
    check-cast p1, Landroid/app/enterprise/lso/LSOItemWidget;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_5b

    nop

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_7d
        :pswitch_83
        :pswitch_89
        :pswitch_8f
    .end packed-switch
.end method

.method private loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V
    .registers 9

    const/4 v4, -0x1

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemText;->setText(Ljava/lang/String;)V

    :cond_12
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v4, :cond_1d

    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextColor(I)V

    :cond_1d
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v4, :cond_28

    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    :cond_28
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_36

    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(F)V

    :cond_36
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadTextData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V
    .registers 7

    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    :cond_11
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadWidgetData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z
    .registers 15

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v4

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v7, "LSO"

    const-string v8, "Cannot construct content values"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string v7, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v3

    const/4 v7, 0x4

    if-eq v3, v7, :cond_27

    const/4 v4, 0x1

    goto :goto_3

    :cond_27
    const/4 v0, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    check-cast v2, Landroid/app/enterprise/lso/LSOItemContainer;

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v2}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v7

    if-ge v1, v7, :cond_41

    if-eqz v4, :cond_41

    invoke-virtual {v2, v1}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v7

    invoke-direct {p0, v7, p2, v5, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_41
    if-nez v4, :cond_3

    const-string v7, "LSO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert/Update record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_81

    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_81
    return v1
.end method

.method private wipeLayerData(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_13

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->remove(Ljava/lang/String;)Z

    :goto_b
    const-string v2, "LSO"

    const-string v3, "LOCKSCREEN_OVERLAY - cleaned"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "Item_Layer"

    aput-object v2, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_b
.end method


# virtual methods
.method public getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;
    .registers 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "policyName"

    aput-object v6, v5, v8

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "LOCKSCREEN_OVERLAY"

    aput-object v6, v4, v8

    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "accountObject"

    aput-object v6, v3, v8

    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "ADMIN_REF"

    invoke-virtual {v6, v7, v5, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_20

    const/4 v2, 0x0

    :cond_1f
    :goto_1f
    return-object v2

    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    goto :goto_1f
.end method

.method public getCount(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_22

    :goto_21
    return v0

    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "Item_ParentId"

    aput-object v6, v4, v7

    const-string v6, "Item_Layer"

    aput-object v6, v4, v9

    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "LOCKSCREEN_OVERLAY"

    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :goto_2e
    return-object v1

    :cond_2f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_2e

    :cond_41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v2, v6

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v1

    if-nez v1, :cond_58

    const-string v6, "LSO"

    const-string v7, "Invalid Item type"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_2e

    :cond_58
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2e
.end method

.method public getOverlayAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public resetOverlayData(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_OVERLAY"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "ADMIN_REF"

    const-string v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    :cond_18
    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_OVERLAY - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetWallpaperData()V
    .registers 4

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_WALLPAPER"

    aput-object v2, v0, v1

    const-string v1, "ADMIN_REF"

    const-string v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_9

    cmp-long v4, p1, v6

    if-nez v4, :cond_11

    :cond_9
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Parameter cannot be null"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_23
    :goto_23
    return v2

    :cond_24
    int-to-long v4, v1

    cmp-long v4, v4, p1

    if-eqz v4, :cond_23

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "policyName"

    const-string v5, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_49

    const-string v4, "accountObject"

    invoke-virtual {p5}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_49
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_5a

    const/4 v2, 0x1

    :goto_54
    if-nez v2, :cond_23

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_23

    :cond_5a
    move v2, v3

    goto :goto_54
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    if-eqz p3, :cond_8

    cmp-long v2, p1, v4

    if-nez v2, :cond_10

    :cond_8
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "policyName"

    const-string v3, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "ADMIN_REF"

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3a

    const/4 v1, 0x1

    :goto_34
    if-nez v1, :cond_39

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    :cond_39
    return v1

    :cond_3a
    const/4 v1, 0x0

    goto :goto_34
.end method

.method public updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_23

    const-string v4, "accountObject"

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_12
    const-string v3, "policyName=?"

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "LOCKSCREEN_OVERLAY"

    aput-object v4, v2, v5

    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2c

    :goto_22
    return v1

    :cond_23
    const-string v6, "accountObject"

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_12

    :cond_2c
    move v1, v5

    goto :goto_22
.end method