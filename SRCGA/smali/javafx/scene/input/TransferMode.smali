.class public final enum Ljavafx/scene/input/TransferMode;
.super Ljava/lang/Enum;
.source "TransferMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/input/TransferMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/input/TransferMode;

.field public static final ANY:[Ljavafx/scene/input/TransferMode;

.field public static final enum COPY:Ljavafx/scene/input/TransferMode;

.field public static final COPY_OR_MOVE:[Ljavafx/scene/input/TransferMode;

.field public static final enum LINK:Ljavafx/scene/input/TransferMode;

.field public static final enum MOVE:Ljavafx/scene/input/TransferMode;

.field public static final NONE:[Ljavafx/scene/input/TransferMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COPY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TransferMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    .line 44
    new-instance v0, Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MOVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TransferMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    .line 49
    new-instance v0, Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LINK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TransferMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/TransferMode;->$VALUES:[Ljavafx/scene/input/TransferMode;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/TransferMode;->ANY:[Ljavafx/scene/input/TransferMode;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/TransferMode;->COPY_OR_MOVE:[Ljavafx/scene/input/TransferMode;

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/scene/input/TransferMode;

    sput-object v0, Ljavafx/scene/input/TransferMode;->NONE:[Ljavafx/scene/input/TransferMode;

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

    .local v0, "this":Ljavafx/scene/input/TransferMode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/TransferMode;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/input/TransferMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/input/TransferMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljavafx/scene/input/TransferMode;->$VALUES:[Ljavafx/scene/input/TransferMode;

    invoke-virtual {v0}, [Ljavafx/scene/input/TransferMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/input/TransferMode;

    return-object v0
.end method
