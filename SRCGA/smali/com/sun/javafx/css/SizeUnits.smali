.class public abstract enum Lcom/sun/javafx/css/SizeUnits;
.super Ljava/lang/Enum;
.source "SizeUnits.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/css/SizeUnits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/css/SizeUnits;

.field public static final enum CM:Lcom/sun/javafx/css/SizeUnits;

.field private static final CM_PER_INCH:D = 2.54

.field public static final enum DEG:Lcom/sun/javafx/css/SizeUnits;

.field private static final DOTS_PER_INCH:D = 96.0

.field public static final enum EM:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum EX:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum GRAD:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum IN:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum MM:Lcom/sun/javafx/css/SizeUnits;

.field private static final MM_PER_INCH:D = 25.4

.field public static final enum MS:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum PC:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum PERCENT:Lcom/sun/javafx/css/SizeUnits;

.field private static final POINTS_PER_INCH:D = 72.0

.field private static final POINTS_PER_PICA:D = 12.0

.field public static final enum PT:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum PX:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum RAD:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum S:Lcom/sun/javafx/css/SizeUnits;

.field public static final enum TURN:Lcom/sun/javafx/css/SizeUnits;


# instance fields
.field private final absolute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "PERCENT"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    .line 51
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$2;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "IN"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->IN:Lcom/sun/javafx/css/SizeUnits;

    .line 67
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$3;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CM"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->CM:Lcom/sun/javafx/css/SizeUnits;

    .line 83
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$4;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "MM"

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->MM:Lcom/sun/javafx/css/SizeUnits;

    .line 99
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$5;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "EM"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->EM:Lcom/sun/javafx/css/SizeUnits;

    .line 115
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$6;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "EX"

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->EX:Lcom/sun/javafx/css/SizeUnits;

    .line 133
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$7;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "PT"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->PT:Lcom/sun/javafx/css/SizeUnits;

    .line 148
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$8;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "PC"

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->PC:Lcom/sun/javafx/css/SizeUnits;

    .line 163
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$9;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "PX"

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$9;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    .line 179
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$10;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "DEG"

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$10;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->DEG:Lcom/sun/javafx/css/SizeUnits;

    .line 195
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$11;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "GRAD"

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$11;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->GRAD:Lcom/sun/javafx/css/SizeUnits;

    .line 214
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$12;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "RAD"

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$12;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->RAD:Lcom/sun/javafx/css/SizeUnits;

    .line 233
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$13;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TURN"

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$13;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->TURN:Lcom/sun/javafx/css/SizeUnits;

    .line 252
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$14;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "S"

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$14;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->S:Lcom/sun/javafx/css/SizeUnits;

    .line 269
    new-instance v0, Lcom/sun/javafx/css/SizeUnits$15;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "MS"

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SizeUnits$15;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->MS:Lcom/sun/javafx/css/SizeUnits;

    .line 33
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sun/javafx/css/SizeUnits;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->IN:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->CM:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->MM:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->EM:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->EX:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->PT:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->PC:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->DEG:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->GRAD:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->RAD:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->TURN:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->S:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/javafx/css/SizeUnits;->MS:Lcom/sun/javafx/css/SizeUnits;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/css/SizeUnits;->$VALUES:[Lcom/sun/javafx/css/SizeUnits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "absolute":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/css/SizeUnits;->absolute:Z

    .line 291
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/sun/javafx/css/SizeUnits$1;)V
    .locals 9

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":Z
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/css/SizeUnits$1;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/css/SizeUnits;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/text/Font;)D
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Font;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/SizeUnits;->pointSize(Ljavafx/scene/text/Font;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Font;
    return-wide v0
.end method

.method static synthetic access$200(D)D
    .locals 4

    .prologue
    .line 33
    move-wide v0, p0

    .local v0, "x0":D
    move-wide v2, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/css/SizeUnits;->round(D)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "x0":D
    return-wide v0
.end method

.method static synthetic access$300(Ljavafx/scene/text/Font;)D
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Font;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/SizeUnits;->pixelSize(Ljavafx/scene/text/Font;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Font;
    return-wide v0
.end method

.method private static pixelSize(Ljavafx/scene/text/Font;)D
    .locals 4

    .prologue
    .line 313
    move-object v1, p0

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "font":Ljavafx/scene/text/Font;
    return-wide v1

    .restart local v1    # "font":Ljavafx/scene/text/Font;
    :cond_0
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v2

    goto :goto_0
.end method

.method private static pointSize(Ljavafx/scene/text/Font;)D
    .locals 6

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/css/SizeUnits;->pixelSize(Ljavafx/scene/text/Font;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "font":Ljavafx/scene/text/Font;
    return-wide v1
.end method

.method private static round(D)D
    .locals 8

    .prologue
    .line 319
    move-wide v0, p0

    .local v0, "d":D
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v0

    move-wide v0, v4

    .line 322
    .end local v0    # "d":D
    .local v2, "r":D
    :goto_0
    return-wide v0

    .line 321
    .end local v2    # "r":D
    .restart local v0    # "d":D
    :cond_0
    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const-wide v4, -0x4056666666666666L    # -0.05

    :goto_1
    move-wide v2, v4

    .line 322
    .restart local v2    # "r":D
    move-wide v4, v0

    move-wide v6, v2

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 321
    .end local v2    # "r":D
    :cond_1
    const-wide v4, 0x3fa999999999999aL    # 0.05

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/css/SizeUnits;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/css/SizeUnits;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/css/SizeUnits;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sun/javafx/css/SizeUnits;->$VALUES:[Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v0}, [Lcom/sun/javafx/css/SizeUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/css/SizeUnits;

    return-object v0
.end method


# virtual methods
.method public isAbsolute()Z
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/SizeUnits;->absolute:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits;
    return v0
.end method

.method abstract pixels(DDLjavafx/scene/text/Font;)D
.end method

.method abstract points(DDLjavafx/scene/text/Font;)D
.end method
