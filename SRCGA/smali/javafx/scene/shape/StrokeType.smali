.class public final enum Ljavafx/scene/shape/StrokeType;
.super Ljava/lang/Enum;
.source "StrokeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/shape/StrokeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/shape/StrokeType;

.field public static final enum CENTERED:Ljavafx/scene/shape/StrokeType;

.field public static final enum INSIDE:Ljavafx/scene/shape/StrokeType;

.field public static final enum OUTSIDE:Ljavafx/scene/shape/StrokeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljavafx/scene/shape/StrokeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INSIDE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/shape/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    .line 66
    new-instance v0, Ljavafx/scene/shape/StrokeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OUTSIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/shape/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    .line 83
    new-instance v0, Ljavafx/scene/shape/StrokeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CENTERED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/shape/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/shape/StrokeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/shape/StrokeType;->$VALUES:[Ljavafx/scene/shape/StrokeType;

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
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/StrokeType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/shape/StrokeType;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/shape/StrokeType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/StrokeType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/shape/StrokeType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljavafx/scene/shape/StrokeType;->$VALUES:[Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v0}, [Ljavafx/scene/shape/StrokeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/shape/StrokeType;

    return-object v0
.end method
