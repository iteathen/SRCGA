.class public final Lcom/sun/javafx/css/converters/PaintConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;,
        Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;,
        Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;,
        Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;,
        Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;,
        Lcom/sun/javafx/css/converters/PaintConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Ljavafx/scene/paint/Paint;",
        ">;",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/PaintConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/PaintConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/PaintConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/paint/Paint;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;Ljavafx/scene/paint/Paint;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 67
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/paint/Paint;

    if-eqz v4, :cond_0

    .line 68
    move-object v4, v3

    check-cast v4, Ljavafx/scene/paint/Paint;

    move-object v0, v4

    .line 70
    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/ParsedValue;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/paint/Paint;

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter;
    const-string v1, "PaintConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter;
    return-object v0
.end method
