.class public final Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "LayeredBorderPaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Ljavafx/scene/paint/Paint;",
        ">;[",
        "Ljavafx/scene/paint/Paint;",
        ">;[[",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYERED_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->LAYERED_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 50
    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->LAYERED_BORDER_PAINT_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[[Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[[Ljavafx/scene/paint/Paint;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;[",
            "Ljavafx/scene/paint/Paint;",
            ">;[[",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[[",
            "Ljavafx/scene/paint/Paint;"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;[Ljavafx/scene/paint/Paint;>;[[Ljavafx/scene/paint/Paint;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 55
    .local v3, "layers":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;[Ljavafx/scene/paint/Paint;>;"
    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x0

    filled-new-array {v6, v7}, [I

    move-result-object v7

    const-class v6, Ljavafx/scene/paint/Paint;

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljavafx/scene/paint/Paint;

    move-object v4, v6

    .line 56
    .local v4, "paints":[[Ljavafx/scene/paint/Paint;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "layer":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 57
    move-object v6, v4

    move v7, v5

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    move-result-object v8

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/paint/Paint;

    move-result-object v8

    aput-object v8, v6, v7

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    const-string v1, "LayeredBorderPaintConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;
    return-object v0
.end method
