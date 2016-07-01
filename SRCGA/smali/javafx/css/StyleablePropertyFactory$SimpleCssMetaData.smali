.class Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;
.super Ljavafx/css/CssMetaData;
.source "StyleablePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/css/StyleablePropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleCssMetaData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljavafx/css/Styleable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/css/CssMetaData",
        "<TS;TV;>;"
    }
.end annotation


# instance fields
.field private final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TV;>;>;",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;TV;Z)V"
        }
    .end annotation

    .prologue
    .line 1796
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TV;>;>;"
    move-object v3, p3

    .local v3, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*TV;>;"
    move-object v4, p4

    .local v4, "initialValue":Ljava/lang/Object;, "TV;"
    move/from16 v5, p5

    .local v5, "inherits":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    .line 1797
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;->function:Ljava/util/function/Function;

    .line 1798
    return-void
.end method


# virtual methods
.method public final getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/css/StyleableProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1814
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1815
    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;->function:Ljava/util/function/Function;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    move-object v2, v3

    .line 1816
    .local v2, "property":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<TV;>;"
    move-object v3, v2

    move-object v0, v3

    .line 1818
    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    .end local v2    # "property":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public final isSettable(Ljavafx/css/Styleable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 1803
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v3

    move-object v2, v3

    .line 1804
    .local v2, "prop":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<TV;>;"
    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/property/Property;

    if-eqz v3, :cond_1

    .line 1805
    move-object v3, v2

    check-cast v3, Ljavafx/beans/property/Property;

    invoke-interface {v3}, Ljavafx/beans/property/Property;->isBound()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 1808
    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    :goto_1
    return v0

    .line 1805
    .restart local v0    # "this":Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;, "Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData<TS;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1808
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method
