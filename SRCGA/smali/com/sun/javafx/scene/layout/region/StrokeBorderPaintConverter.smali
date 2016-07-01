.class public Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "StrokeBorderPaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Ljavafx/scene/paint/Paint;",
        ">;[",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# static fields
.field private static final STROKE_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->STROKE_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->STROKE_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/paint/Paint;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;[",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljavafx/scene/paint/Paint;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;[Ljavafx/scene/paint/Paint;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/css/ParsedValue;

    move-object v3, v5

    .line 54
    .local v3, "borders":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;"
    const/4 v5, 0x4

    new-array v5, v5, [Ljavafx/scene/paint/Paint;

    move-object v4, v5

    .line 56
    .local v4, "paints":[Ljavafx/scene/paint/Paint;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v3

    array-length v7, v7

    if-lez v7, :cond_0

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    .line 57
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Paint;

    :goto_0
    aput-object v7, v5, v6

    .line 59
    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    .line 60
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Paint;

    :goto_1
    aput-object v7, v5, v6

    .line 62
    move-object v5, v4

    const/4 v6, 0x2

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v2

    .line 63
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Paint;

    :goto_2
    aput-object v7, v5, v6

    .line 65
    move-object v5, v4

    const/4 v6, 0x3

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3

    move-object v7, v3

    const/4 v8, 0x3

    aget-object v7, v7, v8

    move-object v8, v2

    .line 66
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Paint;

    :goto_3
    aput-object v7, v5, v6

    .line 68
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    return-object v0

    .line 57
    .restart local v0    # "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    :cond_0
    sget-object v7, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    goto :goto_0

    .line 60
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_1

    .line 63
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_2

    .line 66
    :cond_3
    move-object v7, v4

    const/4 v8, 0x1

    aget-object v7, v7, v8

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    const-string v1, "StrokeBorderPaintConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;
    return-object v0
.end method
