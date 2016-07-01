.class public final enum Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
.super Ljava/lang/Enum;
.source "ScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/ScrollEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalTextScrollUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

.field public static final enum LINES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

.field public static final enum NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

.field public static final enum PAGES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 588
    new-instance v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    .line 594
    new-instance v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LINES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->LINES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    .line 600
    new-instance v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PAGES"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->PAGES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    .line 583
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->LINES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->PAGES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->$VALUES:[Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

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
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    .locals 3

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    .locals 1

    .prologue
    .line 583
    sget-object v0, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->$VALUES:[Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    invoke-virtual {v0}, [Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    return-object v0
.end method
