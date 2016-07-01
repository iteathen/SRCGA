.class public final enum Ljavafx/stage/PopupWindow$AnchorLocation;
.super Ljava/lang/Enum;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnchorLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/stage/PopupWindow$AnchorLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum CONTENT_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum CONTENT_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum CONTENT_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum CONTENT_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum WINDOW_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum WINDOW_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum WINDOW_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

.field public static final enum WINDOW_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;


# instance fields
.field private final contentLocation:Z

.field private final xCoef:D

.field private final yCoef:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 629
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "WINDOW_TOP_LEFT"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 631
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "WINDOW_TOP_RIGHT"

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 633
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "WINDOW_BOTTOM_LEFT"

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 635
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "WINDOW_BOTTOM_RIGHT"

    const/4 v3, 0x3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 637
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "CONTENT_TOP_LEFT"

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 639
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "CONTENT_TOP_RIGHT"

    const/4 v3, 0x5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 641
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "CONTENT_BOTTOM_LEFT"

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 643
    new-instance v0, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "CONTENT_BOTTOM_RIGHT"

    const/4 v3, 0x7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Ljavafx/stage/PopupWindow$AnchorLocation;-><init>(Ljava/lang/String;IDDZ)V

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    .line 627
    const/16 v0, 0x8

    new-array v0, v0, [Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->WINDOW_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x5

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_TOP_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x6

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_BOTTOM_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x7

    sget-object v3, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_BOTTOM_RIGHT:Ljavafx/stage/PopupWindow$AnchorLocation;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->$VALUES:[Ljavafx/stage/PopupWindow$AnchorLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDDZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ)V"
        }
    .end annotation

    .prologue
    .line 650
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    .local v4, "xCoef":D
    move-wide/from16 v6, p5

    .local v6, "yCoef":D
    move/from16 v8, p7

    .local v8, "contentLocation":Z
    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 651
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Ljavafx/stage/PopupWindow$AnchorLocation;->xCoef:D

    .line 652
    move-object v9, v1

    move-wide v10, v6

    iput-wide v10, v9, Ljavafx/stage/PopupWindow$AnchorLocation;->yCoef:D

    .line 653
    move-object v9, v1

    move v10, v8

    iput-boolean v10, v9, Ljavafx/stage/PopupWindow$AnchorLocation;->contentLocation:Z

    .line 654
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/stage/PopupWindow$AnchorLocation;
    .locals 3

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/stage/PopupWindow$AnchorLocation;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/stage/PopupWindow$AnchorLocation;
    .locals 1

    .prologue
    .line 627
    sget-object v0, Ljavafx/stage/PopupWindow$AnchorLocation;->$VALUES:[Ljavafx/stage/PopupWindow$AnchorLocation;

    invoke-virtual {v0}, [Ljavafx/stage/PopupWindow$AnchorLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/stage/PopupWindow$AnchorLocation;

    return-object v0
.end method


# virtual methods
.method getXCoef()D
    .locals 3

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/stage/PopupWindow$AnchorLocation;->xCoef:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    return-wide v0
.end method

.method getYCoef()D
    .locals 3

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/stage/PopupWindow$AnchorLocation;->yCoef:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    return-wide v0
.end method

.method isContentLocation()Z
    .locals 2

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/PopupWindow$AnchorLocation;->contentLocation:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$AnchorLocation;
    return v0
.end method
