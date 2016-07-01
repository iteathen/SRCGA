.class public final enum Ljavafx/scene/input/MouseButton;
.super Ljava/lang/Enum;
.source "MouseButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/input/MouseButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/input/MouseButton;

.field public static final enum MIDDLE:Ljavafx/scene/input/MouseButton;

.field public static final enum NONE:Ljavafx/scene/input/MouseButton;

.field public static final enum PRIMARY:Ljavafx/scene/input/MouseButton;

.field public static final enum SECONDARY:Ljavafx/scene/input/MouseButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljavafx/scene/input/MouseButton;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    .line 42
    new-instance v0, Ljavafx/scene/input/MouseButton;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PRIMARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    .line 47
    new-instance v0, Ljavafx/scene/input/MouseButton;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MIDDLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    .line 52
    new-instance v0, Ljavafx/scene/input/MouseButton;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SECONDARY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/MouseButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/input/MouseButton;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/MouseButton;->$VALUES:[Ljavafx/scene/input/MouseButton;

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
    .line 32
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseButton;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/MouseButton;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/input/MouseButton;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/MouseButton;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/input/MouseButton;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/scene/input/MouseButton;->$VALUES:[Ljavafx/scene/input/MouseButton;

    invoke-virtual {v0}, [Ljavafx/scene/input/MouseButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/input/MouseButton;

    return-object v0
.end method
