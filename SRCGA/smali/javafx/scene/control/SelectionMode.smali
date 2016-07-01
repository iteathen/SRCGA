.class public final enum Ljavafx/scene/control/SelectionMode;
.super Ljava/lang/Enum;
.source "SelectionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/SelectionMode;

.field public static final enum MULTIPLE:Ljavafx/scene/control/SelectionMode;

.field public static final enum SINGLE:Ljavafx/scene/control/SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljavafx/scene/control/SelectionMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SINGLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    .line 45
    new-instance v0, Ljavafx/scene/control/SelectionMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MULTIPLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/control/SelectionMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/SelectionMode;->MULTIPLE:Ljavafx/scene/control/SelectionMode;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/SelectionMode;->$VALUES:[Ljavafx/scene/control/SelectionMode;

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
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionMode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/SelectionMode;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/SelectionMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SelectionMode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/SelectionMode;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljavafx/scene/control/SelectionMode;->$VALUES:[Ljavafx/scene/control/SelectionMode;

    invoke-virtual {v0}, [Ljavafx/scene/control/SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/SelectionMode;

    return-object v0
.end method
