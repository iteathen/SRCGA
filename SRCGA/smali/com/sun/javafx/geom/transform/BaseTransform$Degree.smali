.class public final enum Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
.super Ljava/lang/Enum;
.source "BaseTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/transform/BaseTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Degree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/geom/transform/BaseTransform$Degree;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

.field public static final enum AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

.field public static final enum AFFINE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

.field public static final enum IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

.field public static final enum TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

.field public static final enum TRANSLATE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "IDENTITY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    .line 42
    new-instance v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRANSLATE_2D"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    .line 43
    new-instance v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AFFINE_2D"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    .line 44
    new-instance v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRANSLATE_3D"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    .line 45
    new-instance v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AFFINE_3D"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_3D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->$VALUES:[Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

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
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/geom/transform/BaseTransform$Degree;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->$VALUES:[Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-virtual {v0}, [Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    return-object v0
.end method
