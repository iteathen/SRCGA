.class public Lcom/sun/javafx/css/SubCssMetaData;
.super Ljavafx/css/CssMetaData;
.source "SubCssMetaData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/Node;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;->getStyleableProperty(Ljavafx/scene/Node;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/Node;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;->isSettable(Ljavafx/scene/Node;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    return v0
.end method

.method public isSettable(Ljavafx/scene/Node;)Z
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SubCssMetaData;, "Lcom/sun/javafx/css/SubCssMetaData<TT;>;"
    return v0
.end method
