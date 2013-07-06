.class public final enum Lcom/sec/knox/container/constants/CSState;
.super Ljava/lang/Enum;
.source "CSState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/knox/container/constants/CSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_DOESNOT_EXISTS"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_CREATION_INPROGRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_ACTIVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK_RESET_PWD"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_VERIFY_PWD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_RESET_PWD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_RESET_PWD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_UNINSTALL_INPROGRESS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INVALID"

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/knox/container/constants/CSState;

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return-void
.end method

.method public static getState(I)Lcom/sec/knox/container/constants/CSState;
    .registers 2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    packed-switch p0, :pswitch_data_2a

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    :goto_7
    return-object v0

    :pswitch_8
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_b
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_e
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_11
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_14
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_17
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_1a
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_1d
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_20
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_23
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    :pswitch_26
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    goto :goto_7

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/knox/container/constants/CSState;
    .registers 2

    const-class v0, Lcom/sec/knox/container/constants/CSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method

.method public static values()[Lcom/sec/knox/container/constants/CSState;
    .registers 1

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, [Lcom/sec/knox/container/constants/CSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return v0
.end method
