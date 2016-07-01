.class public final enum Ljavafx/scene/control/OverrunStyle;
.super Ljava/lang/Enum;
.source "OverrunStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/OverrunStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/OverrunStyle;

.field public static final enum CENTER_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

.field public static final enum CENTER_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

.field public static final enum CLIP:Ljavafx/scene/control/OverrunStyle;

.field public static final enum ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

.field public static final enum LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

.field public static final enum LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

.field public static final enum WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLIP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    .line 44
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ELLIPSIS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 52
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WORD_ELLIPSIS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 59
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CENTER_ELLIPSIS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->CENTER_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 66
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CENTER_WORD_ELLIPSIS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->CENTER_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 71
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEADING_ELLIPSIS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 76
    new-instance v0, Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEADING_WORD_ELLIPSIS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/OverrunStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljavafx/scene/control/OverrunStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->CENTER_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->CENTER_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/OverrunStyle;->$VALUES:[Ljavafx/scene/control/OverrunStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/OverrunStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/OverrunStyle;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/OverrunStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/OverrunStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/OverrunStyle;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljavafx/scene/control/OverrunStyle;->$VALUES:[Ljavafx/scene/control/OverrunStyle;

    invoke-virtual {v0}, [Ljavafx/scene/control/OverrunStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/OverrunStyle;

    return-object v0
.end method
