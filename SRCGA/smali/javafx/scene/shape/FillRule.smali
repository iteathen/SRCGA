.class public final enum Ljavafx/scene/shape/FillRule;
.super Ljava/lang/Enum;
.source "FillRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/shape/FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/shape/FillRule;

.field public static final enum EVEN_ODD:Ljavafx/scene/shape/FillRule;

.field public static final enum NON_ZERO:Ljavafx/scene/shape/FillRule;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Ljavafx/scene/shape/FillRule;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EVEN_ODD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/shape/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/shape/FillRule;->EVEN_ODD:Ljavafx/scene/shape/FillRule;

    .line 57
    new-instance v0, Ljavafx/scene/shape/FillRule;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NON_ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/shape/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/shape/FillRule;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/shape/FillRule;->EVEN_ODD:Ljavafx/scene/shape/FillRule;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/shape/FillRule;->$VALUES:[Ljavafx/scene/shape/FillRule;

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

    .local v0, "this":Ljavafx/scene/shape/FillRule;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/shape/FillRule;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/shape/FillRule;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/FillRule;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/shape/FillRule;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/scene/shape/FillRule;->$VALUES:[Ljavafx/scene/shape/FillRule;

    invoke-virtual {v0}, [Ljavafx/scene/shape/FillRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/shape/FillRule;

    return-object v0
.end method
