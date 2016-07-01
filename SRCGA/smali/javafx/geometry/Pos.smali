.class public final enum Ljavafx/geometry/Pos;
.super Ljava/lang/Enum;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/geometry/Pos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/geometry/Pos;

.field public static final enum BASELINE_CENTER:Ljavafx/geometry/Pos;

.field public static final enum BASELINE_LEFT:Ljavafx/geometry/Pos;

.field public static final enum BASELINE_RIGHT:Ljavafx/geometry/Pos;

.field public static final enum BOTTOM_CENTER:Ljavafx/geometry/Pos;

.field public static final enum BOTTOM_LEFT:Ljavafx/geometry/Pos;

.field public static final enum BOTTOM_RIGHT:Ljavafx/geometry/Pos;

.field public static final enum CENTER:Ljavafx/geometry/Pos;

.field public static final enum CENTER_LEFT:Ljavafx/geometry/Pos;

.field public static final enum CENTER_RIGHT:Ljavafx/geometry/Pos;

.field public static final enum TOP_CENTER:Ljavafx/geometry/Pos;

.field public static final enum TOP_LEFT:Ljavafx/geometry/Pos;

.field public static final enum TOP_RIGHT:Ljavafx/geometry/Pos;


# instance fields
.field private final hpos:Ljavafx/geometry/HPos;

.field private final vpos:Ljavafx/geometry/VPos;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 45
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x0

    sget-object v4, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    .line 50
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "TOP_CENTER"

    const/4 v3, 0x1

    sget-object v4, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->TOP_CENTER:Ljavafx/geometry/Pos;

    .line 55
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "TOP_RIGHT"

    const/4 v3, 0x2

    sget-object v4, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->TOP_RIGHT:Ljavafx/geometry/Pos;

    .line 60
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "CENTER_LEFT"

    const/4 v3, 0x3

    sget-object v4, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    .line 65
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "CENTER"

    const/4 v3, 0x4

    sget-object v4, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    .line 70
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "CENTER_RIGHT"

    const/4 v3, 0x5

    sget-object v4, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->CENTER_RIGHT:Ljavafx/geometry/Pos;

    .line 75
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BOTTOM_LEFT"

    const/4 v3, 0x6

    sget-object v4, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BOTTOM_LEFT:Ljavafx/geometry/Pos;

    .line 80
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BOTTOM_CENTER"

    const/4 v3, 0x7

    sget-object v4, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BOTTOM_CENTER:Ljavafx/geometry/Pos;

    .line 85
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BOTTOM_RIGHT"

    const/16 v3, 0x8

    sget-object v4, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BOTTOM_RIGHT:Ljavafx/geometry/Pos;

    .line 90
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BASELINE_LEFT"

    const/16 v3, 0x9

    sget-object v4, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BASELINE_LEFT:Ljavafx/geometry/Pos;

    .line 95
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BASELINE_CENTER"

    const/16 v3, 0xa

    sget-object v4, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BASELINE_CENTER:Ljavafx/geometry/Pos;

    .line 100
    new-instance v0, Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "BASELINE_RIGHT"

    const/16 v3, 0xb

    sget-object v4, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    sget-object v5, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/geometry/Pos;-><init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V

    sput-object v0, Ljavafx/geometry/Pos;->BASELINE_RIGHT:Ljavafx/geometry/Pos;

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [Ljavafx/geometry/Pos;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/Pos;->TOP_CENTER:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Ljavafx/geometry/Pos;->TOP_RIGHT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    sget-object v3, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x5

    sget-object v3, Ljavafx/geometry/Pos;->CENTER_RIGHT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x6

    sget-object v3, Ljavafx/geometry/Pos;->BOTTOM_LEFT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x7

    sget-object v3, Ljavafx/geometry/Pos;->BOTTOM_CENTER:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x8

    sget-object v3, Ljavafx/geometry/Pos;->BOTTOM_RIGHT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x9

    sget-object v3, Ljavafx/geometry/Pos;->BASELINE_LEFT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xa

    sget-object v3, Ljavafx/geometry/Pos;->BASELINE_CENTER:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xb

    sget-object v3, Ljavafx/geometry/Pos;->BASELINE_RIGHT:Ljavafx/geometry/Pos;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/geometry/Pos;->$VALUES:[Ljavafx/geometry/Pos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjavafx/geometry/VPos;Ljavafx/geometry/HPos;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/VPos;",
            "Ljavafx/geometry/HPos;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Pos;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "vpos":Ljavafx/geometry/VPos;
    move-object v4, p4

    .local v4, "hpos":Ljavafx/geometry/HPos;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/geometry/Pos;->vpos:Ljavafx/geometry/VPos;

    .line 107
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/geometry/Pos;->hpos:Ljavafx/geometry/HPos;

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/geometry/Pos;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/geometry/Pos;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljavafx/geometry/Pos;->$VALUES:[Ljavafx/geometry/Pos;

    invoke-virtual {v0}, [Ljavafx/geometry/Pos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/Pos;

    return-object v0
.end method


# virtual methods
.method public getHpos()Ljavafx/geometry/HPos;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Pos;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/geometry/Pos;->hpos:Ljavafx/geometry/HPos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Pos;
    return-object v0
.end method

.method public getVpos()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Pos;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/geometry/Pos;->vpos:Ljavafx/geometry/VPos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Pos;
    return-object v0
.end method
