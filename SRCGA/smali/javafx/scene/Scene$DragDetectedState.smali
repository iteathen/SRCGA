.class final enum Ljavafx/scene/Scene$DragDetectedState;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DragDetectedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/Scene$DragDetectedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/Scene$DragDetectedState;

.field public static final enum DONE:Ljavafx/scene/Scene$DragDetectedState;

.field public static final enum NOT_YET:Ljavafx/scene/Scene$DragDetectedState;

.field public static final enum PROCESSING:Ljavafx/scene/Scene$DragDetectedState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 3301
    new-instance v0, Ljavafx/scene/Scene$DragDetectedState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NOT_YET"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Scene$DragDetectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/Scene$DragDetectedState;->NOT_YET:Ljavafx/scene/Scene$DragDetectedState;

    .line 3302
    new-instance v0, Ljavafx/scene/Scene$DragDetectedState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PROCESSING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Scene$DragDetectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    .line 3303
    new-instance v0, Ljavafx/scene/Scene$DragDetectedState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Scene$DragDetectedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/Scene$DragDetectedState;->DONE:Ljavafx/scene/Scene$DragDetectedState;

    .line 3300
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/Scene$DragDetectedState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/Scene$DragDetectedState;->NOT_YET:Ljavafx/scene/Scene$DragDetectedState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/Scene$DragDetectedState;->DONE:Ljavafx/scene/Scene$DragDetectedState;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/Scene$DragDetectedState;->$VALUES:[Ljavafx/scene/Scene$DragDetectedState;

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
    .line 3300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DragDetectedState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/Scene$DragDetectedState;
    .locals 3

    .prologue
    .line 3300
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/Scene$DragDetectedState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Scene$DragDetectedState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/Scene$DragDetectedState;
    .locals 1

    .prologue
    .line 3300
    sget-object v0, Ljavafx/scene/Scene$DragDetectedState;->$VALUES:[Ljavafx/scene/Scene$DragDetectedState;

    invoke-virtual {v0}, [Ljavafx/scene/Scene$DragDetectedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/Scene$DragDetectedState;

    return-object v0
.end method
