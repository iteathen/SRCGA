.class public final enum Ljavafx/scene/effect/BlurType;
.super Ljava/lang/Enum;
.source "BlurType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/effect/BlurType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/effect/BlurType;

.field public static final enum GAUSSIAN:Ljavafx/scene/effect/BlurType;

.field public static final enum ONE_PASS_BOX:Ljavafx/scene/effect/BlurType;

.field public static final enum THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

.field public static final enum TWO_PASS_BOX:Ljavafx/scene/effect/BlurType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Ljavafx/scene/effect/BlurType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ONE_PASS_BOX"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlurType;->ONE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    .line 44
    new-instance v0, Ljavafx/scene/effect/BlurType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TWO_PASS_BOX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlurType;->TWO_PASS_BOX:Ljavafx/scene/effect/BlurType;

    .line 50
    new-instance v0, Ljavafx/scene/effect/BlurType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "THREE_PASS_BOX"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    .line 56
    new-instance v0, Ljavafx/scene/effect/BlurType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GAUSSIAN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlurType;->GAUSSIAN:Ljavafx/scene/effect/BlurType;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/effect/BlurType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/effect/BlurType;->ONE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/effect/BlurType;->TWO_PASS_BOX:Ljavafx/scene/effect/BlurType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/effect/BlurType;->GAUSSIAN:Ljavafx/scene/effect/BlurType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/effect/BlurType;->$VALUES:[Ljavafx/scene/effect/BlurType;

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

    .local v0, "this":Ljavafx/scene/effect/BlurType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/effect/BlurType;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/effect/BlurType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlurType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/effect/BlurType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljavafx/scene/effect/BlurType;->$VALUES:[Ljavafx/scene/effect/BlurType;

    invoke-virtual {v0}, [Ljavafx/scene/effect/BlurType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/effect/BlurType;

    return-object v0
.end method
