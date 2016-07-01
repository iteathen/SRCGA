.class public Lcom/sun/javafx/css/converters/ShapeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "ShapeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/shape/Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sun/javafx/css/converters/ShapeConverter;

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/shape/Shape;",
            ">;",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/sun/javafx/css/converters/ShapeConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/css/converters/ShapeConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/converters/ShapeConverter;->INSTANCE:Lcom/sun/javafx/css/converters/ShapeConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sun/javafx/css/converters/ShapeConverter;->cache:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/javafx/css/converters/ShapeConverter;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/sun/javafx/css/converters/ShapeConverter;->INSTANCE:Lcom/sun/javafx/css/converters/ShapeConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/ShapeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/shape/Shape;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/shape/Shape;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/shape/Shape;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/shape/Shape;"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/shape/Shape;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lcom/sun/javafx/css/StyleConverterImpl;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/Shape;

    move-object v3, v6

    .line 48
    .local v3, "shape":Ljavafx/scene/shape/Shape;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v0, v6

    .line 57
    .end local v0    # "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/ShapeConverter;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 51
    .local v4, "svg":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 52
    :cond_2
    new-instance v6, Ljavafx/scene/shape/SVGPath;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljavafx/scene/shape/SVGPath;-><init>()V

    move-object v5, v6

    .line 53
    .local v5, "path":Ljavafx/scene/shape/SVGPath;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/SVGPath;->setContent(Ljava/lang/String;)V

    .line 55
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-super {v6, v7, v8}, Lcom/sun/javafx/css/StyleConverterImpl;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 57
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method
