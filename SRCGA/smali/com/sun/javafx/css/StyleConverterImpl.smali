.class public Lcom/sun/javafx/css/StyleConverterImpl;
.super Ljavafx/css/StyleConverter;
.source "StyleConverterImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/css/StyleConverter",
        "<TF;TT;>;"
    }
.end annotation


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static tmap:Ljava/util/Map;
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


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/css/StyleConverter;-><init>()V

    .line 65
    return-void
.end method

.method static clearCache()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method static getInstance(Ljava/lang/String;)Ljavafx/css/StyleConverter;
    .locals 9
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
    .line 129
    move-object v0, p0

    .local v0, "converterClass":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v1, v5

    .line 131
    .local v1, "styleConverter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
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

    .line 288
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    move-object v4, v5

    .line 289
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    move-object v5, v4

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    move-object v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StyleConverterImpl : converter Class is null for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 295
    .end local v4    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_1
    :goto_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "converterClass":Ljava/lang/String;
    return-object v0

    .line 131
    .restart local v0    # "converterClass":Ljava/lang/String;
    :sswitch_0
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.BooleanConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    :sswitch_1
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.ColorConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v3, v5

    goto :goto_0

    :sswitch_2
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.CursorConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    move v3, v5

    goto :goto_0

    :sswitch_3
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.EffectConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    move v3, v5

    goto :goto_0

    :sswitch_4
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.EffectConverter$DropShadowConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    move v3, v5

    goto :goto_0

    :sswitch_5
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.EffectConverter$InnerShadowConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    move v3, v5

    goto :goto_0

    :sswitch_6
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    move v3, v5

    goto/16 :goto_0

    :sswitch_7
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$FontStyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    move v3, v5

    goto/16 :goto_0

    :sswitch_8
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$StyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    move v3, v5

    goto/16 :goto_0

    :sswitch_9
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$FontWeightConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    move v3, v5

    goto/16 :goto_0

    :sswitch_a
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$WeightConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    move v3, v5

    goto/16 :goto_0

    :sswitch_b
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$FontSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    move v3, v5

    goto/16 :goto_0

    :sswitch_c
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.FontConverter$SizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    move v3, v5

    goto/16 :goto_0

    :sswitch_d
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.InsetsConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    move v3, v5

    goto/16 :goto_0

    :sswitch_e
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.InsetsConverter$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    move v3, v5

    goto/16 :goto_0

    :sswitch_f
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.PaintConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    move v3, v5

    goto/16 :goto_0

    :sswitch_10
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.PaintConverter$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    move v3, v5

    goto/16 :goto_0

    :sswitch_11
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.PaintConverter$LinearGradientConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    move v3, v5

    goto/16 :goto_0

    :sswitch_12
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.PaintConverter$RadialGradientConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    move v3, v5

    goto/16 :goto_0

    :sswitch_13
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.SizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x13

    move v3, v5

    goto/16 :goto_0

    :sswitch_14
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.SizeConverter$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    move v3, v5

    goto/16 :goto_0

    :sswitch_15
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.StringConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    move v3, v5

    goto/16 :goto_0

    :sswitch_16
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.StringConverter$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    move v3, v5

    goto/16 :goto_0

    :sswitch_17
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.URLConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    move v3, v5

    goto/16 :goto_0

    :sswitch_18
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.converters.URLConverter$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x18

    move v3, v5

    goto/16 :goto_0

    :sswitch_19
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundPositionConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x19

    move v3, v5

    goto/16 :goto_0

    :sswitch_1a
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundImage$BackgroundPositionConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    move v3, v5

    goto/16 :goto_0

    :sswitch_1b
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1b

    move v3, v5

    goto/16 :goto_0

    :sswitch_1c
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundImage$BackgroundSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1c

    move v3, v5

    goto/16 :goto_0

    :sswitch_1d
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImageSliceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1d

    move v3, v5

    goto/16 :goto_0

    :sswitch_1e
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImage$SliceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1e

    move v3, v5

    goto/16 :goto_0

    :sswitch_1f
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImageWidthConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1f

    move v3, v5

    goto/16 :goto_0

    :sswitch_20
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImageWidthsSequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x20

    move v3, v5

    goto/16 :goto_0

    :sswitch_21
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderStrokeStyleSequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x21

    move v3, v5

    goto/16 :goto_0

    :sswitch_22
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorder$BorderStyleSequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x22

    move v3, v5

    goto/16 :goto_0

    :sswitch_23
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderStyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x23

    move v3, v5

    goto/16 :goto_0

    :sswitch_24
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorder$BorderStyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x24

    move v3, v5

    goto/16 :goto_0

    :sswitch_25
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.LayeredBackgroundPositionConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x25

    move v3, v5

    goto/16 :goto_0

    :sswitch_26
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundImage$LayeredBackgroundPositionConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x26

    move v3, v5

    goto/16 :goto_0

    :sswitch_27
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.LayeredBackgroundSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x27

    move v3, v5

    goto/16 :goto_0

    :sswitch_28
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundImage$LayeredBackgroundSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x28

    move v3, v5

    goto/16 :goto_0

    :sswitch_29
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.LayeredBorderPaintConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x29

    move v3, v5

    goto/16 :goto_0

    :sswitch_2a
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorder$LayeredBorderPaintConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2a

    move v3, v5

    goto/16 :goto_0

    :sswitch_2b
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.LayeredBorderStyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2b

    move v3, v5

    goto/16 :goto_0

    :sswitch_2c
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorder$LayeredBorderStyleConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2c

    move v3, v5

    goto/16 :goto_0

    :sswitch_2d
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.RepeatStructConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2d

    move v3, v5

    goto/16 :goto_0

    :sswitch_2e
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BackgroundImage$BackgroundRepeatConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    move v3, v5

    goto/16 :goto_0

    :sswitch_2f
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImage$RepeatConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2f

    move v3, v5

    goto/16 :goto_0

    :sswitch_30
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.SliceSequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x30

    move v3, v5

    goto/16 :goto_0

    :sswitch_31
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.BorderImage$SliceSequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x31

    move v3, v5

    goto/16 :goto_0

    :sswitch_32
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorderPaintConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x32

    move v3, v5

    goto/16 :goto_0

    :sswitch_33
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.StrokeBorder$BorderPaintConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x33

    move v3, v5

    goto/16 :goto_0

    :sswitch_34
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.Margins$Converter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x34

    move v3, v5

    goto/16 :goto_0

    :sswitch_35
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.Margins$SequenceConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x35

    move v3, v5

    goto/16 :goto_0

    :sswitch_36
    move-object v5, v2

    const-string v6, "javafx.scene.layout.CornerRadiiConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x36

    move v3, v5

    goto/16 :goto_0

    :sswitch_37
    move-object v5, v2

    const-string v6, "com.sun.javafx.scene.layout.region.CornerRadiiConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x37

    move v3, v5

    goto/16 :goto_0

    :sswitch_38
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.parser.DeriveColorConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x38

    move v3, v5

    goto/16 :goto_0

    :sswitch_39
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.parser.DeriveSizeConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x39

    move v3, v5

    goto/16 :goto_0

    :sswitch_3a
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.parser.LadderConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3a

    move v3, v5

    goto/16 :goto_0

    :sswitch_3b
    move-object v5, v2

    const-string v6, "com.sun.javafx.css.parser.StopConverter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3b

    move v3, v5

    goto/16 :goto_0

    .line 133
    :pswitch_0
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_1
    invoke-static {}, Lcom/sun/javafx/css/converters/ColorConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 137
    goto/16 :goto_1

    .line 139
    :pswitch_2
    invoke-static {}, Lcom/sun/javafx/css/converters/CursorConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 140
    goto/16 :goto_1

    .line 142
    :pswitch_3
    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 143
    goto/16 :goto_1

    .line 145
    :pswitch_4
    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;->getInstance()Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

    move-result-object v5

    move-object v1, v5

    .line 146
    goto/16 :goto_1

    .line 148
    :pswitch_5
    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;->getInstance()Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;

    move-result-object v5

    move-object v1, v5

    .line 149
    goto/16 :goto_1

    .line 151
    :pswitch_6
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 152
    goto/16 :goto_1

    .line 155
    :pswitch_7
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 156
    goto/16 :goto_1

    .line 159
    :pswitch_8
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;

    move-result-object v5

    move-object v1, v5

    .line 160
    goto/16 :goto_1

    .line 163
    :pswitch_9
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;

    move-result-object v5

    move-object v1, v5

    .line 164
    goto/16 :goto_1

    .line 167
    :pswitch_a
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 168
    goto/16 :goto_1

    .line 170
    :pswitch_b
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 171
    goto/16 :goto_1

    .line 174
    :pswitch_c
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 175
    goto/16 :goto_1

    .line 177
    :pswitch_d
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 178
    goto/16 :goto_1

    .line 180
    :pswitch_e
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    move-result-object v5

    move-object v1, v5

    .line 181
    goto/16 :goto_1

    .line 183
    :pswitch_f
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    move-result-object v5

    move-object v1, v5

    .line 184
    goto/16 :goto_1

    .line 187
    :pswitch_10
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 188
    goto/16 :goto_1

    .line 190
    :pswitch_11
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 191
    goto/16 :goto_1

    .line 194
    :pswitch_12
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 195
    goto/16 :goto_1

    .line 197
    :pswitch_13
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/StringConverter$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 198
    goto/16 :goto_1

    .line 200
    :pswitch_14
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 201
    goto/16 :goto_1

    .line 203
    :pswitch_15
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 204
    goto/16 :goto_1

    .line 209
    :pswitch_16
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;

    move-result-object v5

    move-object v1, v5

    .line 210
    goto/16 :goto_1

    .line 213
    :pswitch_17
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;

    move-result-object v5

    move-object v1, v5

    .line 214
    goto/16 :goto_1

    .line 217
    :pswitch_18
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    move-result-object v5

    move-object v1, v5

    .line 218
    goto/16 :goto_1

    .line 220
    :pswitch_19
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    move-result-object v5

    move-object v1, v5

    .line 221
    goto/16 :goto_1

    .line 223
    :pswitch_1a
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthsSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthsSequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 224
    goto/16 :goto_1

    .line 227
    :pswitch_1b
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 228
    goto/16 :goto_1

    .line 231
    :pswitch_1c
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 232
    goto/16 :goto_1

    .line 235
    :pswitch_1d
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;

    move-result-object v5

    move-object v1, v5

    .line 236
    goto/16 :goto_1

    .line 239
    :pswitch_1e
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    move-result-object v5

    move-object v1, v5

    .line 240
    goto/16 :goto_1

    .line 243
    :pswitch_1f
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    move-result-object v5

    move-object v1, v5

    .line 244
    goto/16 :goto_1

    .line 247
    :pswitch_20
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;

    move-result-object v5

    move-object v1, v5

    .line 248
    goto/16 :goto_1

    .line 252
    :pswitch_21
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    move-result-object v5

    move-object v1, v5

    .line 253
    goto/16 :goto_1

    .line 256
    :pswitch_22
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 257
    goto/16 :goto_1

    .line 260
    :pswitch_23
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    move-result-object v5

    move-object v1, v5

    .line 261
    goto/16 :goto_1

    .line 263
    :pswitch_24
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/Margins$Converter;->getInstance()Lcom/sun/javafx/scene/layout/region/Margins$Converter;

    move-result-object v5

    move-object v1, v5

    .line 264
    goto/16 :goto_1

    .line 266
    :pswitch_25
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;

    move-result-object v5

    move-object v1, v5

    .line 267
    goto/16 :goto_1

    .line 270
    :pswitch_26
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    move-result-object v5

    move-object v1, v5

    .line 271
    goto/16 :goto_1

    .line 275
    :pswitch_27
    invoke-static {}, Lcom/sun/javafx/css/parser/DeriveColorConverter;->getInstance()Lcom/sun/javafx/css/parser/DeriveColorConverter;

    move-result-object v5

    move-object v1, v5

    .line 276
    goto/16 :goto_1

    .line 278
    :pswitch_28
    invoke-static {}, Lcom/sun/javafx/css/parser/DeriveSizeConverter;->getInstance()Lcom/sun/javafx/css/parser/DeriveSizeConverter;

    move-result-object v5

    move-object v1, v5

    .line 279
    goto/16 :goto_1

    .line 281
    :pswitch_29
    invoke-static {}, Lcom/sun/javafx/css/parser/LadderConverter;->getInstance()Lcom/sun/javafx/css/parser/LadderConverter;

    move-result-object v5

    move-object v1, v5

    .line 282
    goto/16 :goto_1

    .line 284
    :pswitch_2a
    invoke-static {}, Lcom/sun/javafx/css/parser/StopConverter;->getInstance()Lcom/sun/javafx/css/parser/StopConverter;

    move-result-object v5

    move-object v1, v5

    .line 285
    goto/16 :goto_1

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x76524062 -> :sswitch_23
        -0x735116b3 -> :sswitch_2f
        -0x5fa19b1b -> :sswitch_2
        -0x5d6c5e79 -> :sswitch_f
        -0x5a8e9a5f -> :sswitch_2a
        -0x537d683f -> :sswitch_9
        -0x4b2092c5 -> :sswitch_29
        -0x411c5a15 -> :sswitch_33
        -0x3edd221b -> :sswitch_3a
        -0x3a5b727a -> :sswitch_20
        -0x35e9f145 -> :sswitch_28
        -0x33d9ced3 -> :sswitch_2d
        -0x30ace057 -> :sswitch_32
        -0x2be7bfda -> :sswitch_1e
        -0x29fce783 -> :sswitch_2e
        -0x2925018f -> :sswitch_18
        -0x25d1cc92 -> :sswitch_11
        -0x23c20949 -> :sswitch_4
        -0x231fbce6 -> :sswitch_1d
        -0x1cfd100b -> :sswitch_14
        -0x1b6d21ea -> :sswitch_7
        -0x17b3944c -> :sswitch_12
        -0x1200b6bb -> :sswitch_d
        -0xfd87963 -> :sswitch_38
        -0x71e7fde -> :sswitch_1
        -0x4c5c576 -> :sswitch_15
        -0x1525681 -> :sswitch_39
        -0x387252 -> :sswitch_2c
        0x31c737 -> :sswitch_22
        0xf359548 -> :sswitch_2b
        0x16adbaa4 -> :sswitch_5
        0x17bbeb5a -> :sswitch_13
        0x1939cdf8 -> :sswitch_24
        0x1aca2b65 -> :sswitch_31
        0x1eb9333c -> :sswitch_25
        0x220ea6a7 -> :sswitch_c
        0x23770010 -> :sswitch_30
        0x2da09bf5 -> :sswitch_21
        0x32624d66 -> :sswitch_1f
        0x3cee77e7 -> :sswitch_8
        0x403d3e98 -> :sswitch_b
        0x4442dc26 -> :sswitch_19
        0x44d8ecdd -> :sswitch_35
        0x46025bc5 -> :sswitch_3b
        0x471dd325 -> :sswitch_16
        0x4a9b1eaf -> :sswitch_1a
        0x4e8c54e2 -> :sswitch_10
        0x56f5f7ce -> :sswitch_1b
        0x583fe0d6 -> :sswitch_17
        0x5f9a3810 -> :sswitch_a
        0x68dee6d7 -> :sswitch_1c
        0x6a73b493 -> :sswitch_26
        0x6c15910a -> :sswitch_3
        0x712f49e4 -> :sswitch_27
        0x73401843 -> :sswitch_37
        0x7cdbf99e -> :sswitch_34
        0x7cf5bbbd -> :sswitch_0
        0x7e76cbe8 -> :sswitch_36
        0x7ed3b6cc -> :sswitch_6
        0x7f70c920 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
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
    .line 98
    move-object v0, p0

    .local v0, "is":Ljava/io/DataInputStream;
    move-object v1, p1

    .local v1, "strings":[Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    move v2, v6

    .line 99
    .local v2, "index":I
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 101
    .local v3, "cname":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 123
    .end local v0    # "is":Ljava/io/DataInputStream;
    :goto_0
    return-object v0

    .line 103
    .restart local v0    # "is":Ljava/io/DataInputStream;
    :cond_1
    move-object v6, v3

    const-string v7, "com.sun.javafx.css.converters.EnumConverter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;->readBinary(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 108
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 109
    :cond_3
    move-object v6, v3

    invoke-static {v6}, Lcom/sun/javafx/css/StyleConverterImpl;->getInstance(Ljava/lang/String;)Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v4, v6

    .line 110
    .local v4, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
    move-object v6, v4

    if-nez v6, :cond_4

    .line 111
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v5, v6

    .line 112
    .local v5, "logger":Lsun/util/logging/PlatformLogger;
    move-object v6, v5

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    move-object v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not deserialize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 116
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_4
    move-object v6, v4

    if-nez v6, :cond_5

    .line 117
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not deserialize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_5
    sget-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    if-nez v6, :cond_6

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    .line 120
    :cond_6
    sget-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 121
    move-object v6, v4

    move-object v0, v6

    goto/16 :goto_0

    .line 123
    .end local v4    # "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<**>;"
    :cond_7
    sget-object v6, Lcom/sun/javafx/css/StyleConverterImpl;->tmap:Ljava/util/Map;

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/StyleConverter;

    move-object v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method protected cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/css/ParsedValue;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v3, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    .line 88
    :cond_0
    sget-object v3, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 89
    return-void
.end method

.method public convert(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    move-object v1, p1

    .local v1, "convertedValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    return-object v0
.end method

.method protected getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/css/ParsedValue;
    sget-object v2, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 81
    sget-object v2, Lcom/sun/javafx/css/StyleConverterImpl;->cache:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 83
    .end local v0    # "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleConverterImpl;, "Lcom/sun/javafx/css/StyleConverterImpl<TF;TT;>;"
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "sstore":Lcom/sun/javafx/css/StringStore;
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 71
    .local v3, "cname":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 72
    .local v4, "index":I
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    return-void
.end method
