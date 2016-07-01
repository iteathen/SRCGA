.class synthetic Ljavafx/scene/canvas/GraphicsContext$2;
.super Ljava/lang/Object;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/canvas/GraphicsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$geometry$VPos:[I

.field static final synthetic $SwitchMap$javafx$scene$image$PixelFormat$Type:[I

.field static final synthetic $SwitchMap$javafx$scene$shape$ArcType:[I

.field static final synthetic $SwitchMap$javafx$scene$shape$StrokeLineCap:[I

.field static final synthetic $SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

.field static final synthetic $SwitchMap$javafx$scene$text$TextAlignment:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2761
    invoke-static {}, Ljavafx/scene/image/PixelFormat$Type;->values()[Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_BGRA:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_BGRA_PRE:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_RGB:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_INDEXED:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->INT_ARGB:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->INT_ARGB_PRE:Ljavafx/scene/image/PixelFormat$Type;

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 1609
    :goto_5
    invoke-static {}, Ljavafx/geometry/VPos;->values()[Ljavafx/geometry/VPos;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    :try_start_6
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    sget-object v2, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 1570
    :goto_9
    invoke-static {}, Ljavafx/scene/text/TextAlignment;->values()[Ljavafx/scene/text/TextAlignment;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    :try_start_a
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    sget-object v2, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v2}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    sget-object v2, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v2}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    sget-object v2, Ljavafx/scene/text/TextAlignment;->RIGHT:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v2}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    sget-object v2, Ljavafx/scene/text/TextAlignment;->JUSTIFY:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v2}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 1296
    :goto_d
    invoke-static {}, Ljavafx/scene/shape/StrokeLineJoin;->values()[Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

    :try_start_e
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->ROUND:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineJoin;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 1259
    :goto_10
    invoke-static {}, Ljavafx/scene/shape/StrokeLineCap;->values()[Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineCap:[I

    :try_start_11
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineCap:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineCap;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineCap:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineCap;->ROUND:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineCap;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineCap:[I

    sget-object v2, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeLineCap;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 665
    :goto_13
    invoke-static {}, Ljavafx/scene/shape/ArcType;->values()[Ljavafx/scene/shape/ArcType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$ArcType:[I

    :try_start_14
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$ArcType:[I

    sget-object v2, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$ArcType:[I

    sget-object v2, Ljavafx/scene/shape/ArcType;->CHORD:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    :try_start_16
    sget-object v1, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$ArcType:[I

    sget-object v2, Ljavafx/scene/shape/ArcType;->ROUND:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v2}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :goto_16
    return-void

    .line 2761
    :catch_0
    move-exception v1

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto/16 :goto_5

    .line 1609
    :catch_6
    move-exception v1

    move-object v0, v1

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v0, v1

    goto/16 :goto_7

    :catch_8
    move-exception v1

    move-object v0, v1

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v0, v1

    goto/16 :goto_9

    .line 1570
    :catch_a
    move-exception v1

    move-object v0, v1

    goto/16 :goto_a

    :catch_b
    move-exception v1

    move-object v0, v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    move-object v0, v1

    goto/16 :goto_c

    :catch_d
    move-exception v1

    move-object v0, v1

    goto/16 :goto_d

    .line 1296
    :catch_e
    move-exception v1

    move-object v0, v1

    goto/16 :goto_e

    :catch_f
    move-exception v1

    move-object v0, v1

    goto/16 :goto_f

    :catch_10
    move-exception v1

    move-object v0, v1

    goto/16 :goto_10

    .line 1259
    :catch_11
    move-exception v1

    move-object v0, v1

    goto/16 :goto_11

    :catch_12
    move-exception v1

    move-object v0, v1

    goto :goto_12

    :catch_13
    move-exception v1

    move-object v0, v1

    goto :goto_13

    .line 665
    :catch_14
    move-exception v1

    move-object v0, v1

    goto :goto_14

    :catch_15
    move-exception v1

    move-object v0, v1

    goto :goto_15

    :catch_16
    move-exception v1

    move-object v0, v1

    goto :goto_16
.end method
