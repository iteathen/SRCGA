.class public final Lcom/sun/javafx/css/converters/EnumConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "EnumConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sun/javafx/css/converters/EnumConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/converters/EnumConverter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, p1

    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljavafx/css/StyleConverter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleConverter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "ename":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v1, v5

    .line 113
    .local v1, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
    move-object v5, v0

    move-object v2, v5

    const/4 v5, -0x1

    move v3, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 183
    sget-boolean v5, Lcom/sun/javafx/css/converters/EnumConverter;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnumConverter<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> not expected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 113
    :sswitch_0
    move-object v5, v2

    const-string v6, "com.sun.javafx.cursor.CursorType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    :sswitch_1
    move-object v5, v2

    const-string v6, "javafx.scene.layout.BackgroundRepeat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v3, v5

    goto :goto_0

    :sswitch_2
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.Repeat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    move v3, v5

    goto :goto_0

    :sswitch_3
    move-object v5, v2

    const-string v6, "javafx.geometry.HPos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    move v3, v5

    goto :goto_0

    :sswitch_4
    move-object v5, v2

    const-string v6, "javafx.geometry.Orientation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    move v3, v5

    goto :goto_0

    :sswitch_5
    move-object v5, v2

    const-string v6, "javafx.geometry.Pos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    move v3, v5

    goto :goto_0

    :sswitch_6
    move-object v5, v2

    const-string v6, "javafx.geometry.Side"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    move v3, v5

    goto/16 :goto_0

    :sswitch_7
    move-object v5, v2

    const-string v6, "javafx.geometry.VPos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    move v3, v5

    goto/16 :goto_0

    :sswitch_8
    move-object v5, v2

    const-string v6, "javafx.scene.effect.BlendMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    move v3, v5

    goto/16 :goto_0

    :sswitch_9
    move-object v5, v2

    const-string v6, "javafx.scene.effect.BlurType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    move v3, v5

    goto/16 :goto_0

    :sswitch_a
    move-object v5, v2

    const-string v6, "javafx.scene.paint.CycleMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    move v3, v5

    goto/16 :goto_0

    :sswitch_b
    move-object v5, v2

    const-string v6, "javafx.scene.shape.ArcType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    move v3, v5

    goto/16 :goto_0

    :sswitch_c
    move-object v5, v2

    const-string v6, "javafx.scene.shape.StrokeLineCap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    move v3, v5

    goto/16 :goto_0

    :sswitch_d
    move-object v5, v2

    const-string v6, "javafx.scene.shape.StrokeLineJoin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    move v3, v5

    goto/16 :goto_0

    :sswitch_e
    move-object v5, v2

    const-string v6, "javafx.scene.shape.StrokeType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    move v3, v5

    goto/16 :goto_0

    :sswitch_f
    move-object v5, v2

    const-string v6, "javafx.scene.text.FontPosture"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    move v3, v5

    goto/16 :goto_0

    :sswitch_10
    move-object v5, v2

    const-string v6, "javafx.scene.text.FontSmoothingType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    move v3, v5

    goto/16 :goto_0

    :sswitch_11
    move-object v5, v2

    const-string v6, "javafx.scene.text.FontWeight"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    move v3, v5

    goto/16 :goto_0

    :sswitch_12
    move-object v5, v2

    const-string v6, "javafx.scene.text.TextAlignment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    move v3, v5

    goto/16 :goto_0

    .line 115
    :pswitch_0
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 192
    :cond_1
    :goto_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "ename":Ljava/lang/String;
    return-object v0

    .line 119
    .restart local v0    # "ename":Ljava/lang/String;
    :pswitch_1
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/layout/BackgroundRepeat;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 120
    goto :goto_1

    .line 122
    :pswitch_2
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/geometry/HPos;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 123
    goto :goto_1

    .line 125
    :pswitch_3
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/geometry/Orientation;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 126
    goto :goto_1

    .line 128
    :pswitch_4
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/geometry/Pos;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 129
    goto :goto_1

    .line 131
    :pswitch_5
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/geometry/Side;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 132
    goto :goto_1

    .line 134
    :pswitch_6
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/geometry/VPos;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 135
    goto :goto_1

    .line 137
    :pswitch_7
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/effect/BlendMode;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 138
    goto :goto_1

    .line 140
    :pswitch_8
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/effect/BlurType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 141
    goto :goto_1

    .line 143
    :pswitch_9
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/paint/CycleMethod;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 144
    goto :goto_1

    .line 146
    :pswitch_a
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/shape/ArcType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 147
    goto :goto_1

    .line 149
    :pswitch_b
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/shape/StrokeLineCap;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 150
    goto/16 :goto_1

    .line 152
    :pswitch_c
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/shape/StrokeLineJoin;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 153
    goto/16 :goto_1

    .line 155
    :pswitch_d
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/shape/StrokeType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 156
    goto/16 :goto_1

    .line 158
    :pswitch_e
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/text/FontPosture;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 159
    goto/16 :goto_1

    .line 161
    :pswitch_f
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/text/FontSmoothingType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 162
    goto/16 :goto_1

    .line 164
    :pswitch_10
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/text/FontWeight;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 165
    goto/16 :goto_1

    .line 167
    :pswitch_11
    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-class v7, Ljavafx/scene/text/TextAlignment;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v5

    .line 168
    goto/16 :goto_1

    .line 185
    :cond_2
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    move-object v4, v5

    .line 186
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    move-object v5, v4

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    move-object v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnumConverter : converter Class is null for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7664c081 -> :sswitch_d
        -0x6b52d005 -> :sswitch_e
        -0x635dd0cd -> :sswitch_8
        -0x2fe85906 -> :sswitch_10
        -0x1c980123 -> :sswitch_c
        -0x554250f -> :sswitch_12
        0x12dcc15b -> :sswitch_a
        0x1623a571 -> :sswitch_1
        0x170cb9cc -> :sswitch_11
        0x19ef32ee -> :sswitch_3
        0x19f48f79 -> :sswitch_6
        0x19f59020 -> :sswitch_7
        0x1bcff96e -> :sswitch_4
        0x419506c2 -> :sswitch_9
        0x60ccb2e3 -> :sswitch_b
        0x69e25bf4 -> :sswitch_f
        0x747333f2 -> :sswitch_5
        0x77d3631d -> :sswitch_0
        0x78efe03e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static readBinary(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljavafx/css/StyleConverter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleConverter",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "is":Ljava/io/DataInputStream;
    move-object v1, p1

    .local v1, "strings":[Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    move v2, v6

    .line 85
    .local v2, "index":S
    const/4 v6, 0x0

    move v7, v2

    if-gt v6, v7, :cond_1

    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-gt v6, v7, :cond_1

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    :goto_0
    move-object v3, v6

    .line 87
    .local v3, "ename":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 103
    .end local v0    # "is":Ljava/io/DataInputStream;
    :goto_1
    return-object v0

    .line 85
    .end local v3    # "ename":Ljava/lang/String;
    .restart local v0    # "is":Ljava/io/DataInputStream;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 89
    .restart local v3    # "ename":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 90
    :cond_3
    move-object v6, v3

    invoke-static {v6}, Lcom/sun/javafx/css/converters/EnumConverter;->getInstance(Ljava/lang/String;)Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v4, v6

    .line 92
    .local v4, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
    move-object v6, v4

    if-nez v6, :cond_4

    .line 93
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v5, v6

    .line 94
    .local v5, "logger":Lsun/util/logging/PlatformLogger;
    move-object v6, v5

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 95
    move-object v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not deserialize EnumConverter for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 99
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_4
    sget-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    .line 100
    :cond_5
    sget-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    move-object v6, v4

    move-object v0, v6

    goto :goto_1

    .line 103
    .end local v4    # "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
    :cond_6
    sget-object v6, Lcom/sun/javafx/css/converters/EnumConverter;->converters:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/StyleConverter;

    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Enum;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "TE;>;",
            "Ljavafx/scene/text/Font;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;TE;>;"
    move-object v2, p2

    .local v2, "not_used":Ljavafx/scene/text/Font;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    .line 56
    const/4 v6, 0x0

    move-object v0, v6

    .line 68
    .end local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    :goto_0
    return-object v0

    .line 58
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 59
    .local v3, "string":Ljava/lang/String;
    move-object v6, v3

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v4, v6

    .line 60
    .local v4, "dotPos":I
    move v6, v4

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    .line 61
    move-object v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 64
    :cond_1
    move-object v6, v3

    const/16 v7, 0x2d

    const/16 v8, 0x5f

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 65
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    move-object v7, v3

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 66
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 68
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    move-object v7, v3

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/EnumConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Enum;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 200
    .end local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    :goto_0
    return v0

    .line 199
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/css/converters/EnumConverter;

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 200
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/converters/EnumConverter;

    iget-object v3, v3, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnumConveter["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    return-object v0
.end method

.method public writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "sstore":Lcom/sun/javafx/css/StringStore;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/javafx/css/StyleConverterImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 75
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/converters/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 76
    .local v3, "ename":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 77
    .local v4, "index":I
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    return-void
.end method
