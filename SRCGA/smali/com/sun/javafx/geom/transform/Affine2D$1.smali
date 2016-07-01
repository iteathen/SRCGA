.class synthetic Lcom/sun/javafx/geom/transform/Affine2D$1;
.super Ljava/lang/Object;
.source "Affine2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/transform/Affine2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 761
    invoke-static {}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->values()[Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->IDENTITY:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->TRANSLATE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/geom/transform/Affine2D$1;->$SwitchMap$com$sun$javafx$geom$transform$BaseTransform$Degree:[I

    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->AFFINE_2D:Lcom/sun/javafx/geom/transform/BaseTransform$Degree;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform$Degree;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2
.end method
