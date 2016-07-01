.class final Ljavafx/scene/CssStyleHelper$1;
.super Ljavafx/css/FontCssMetaData;
.source "CssStyleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/CssStyleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/FontCssMetaData",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V
    .locals 6

    .prologue
    .line 1528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$1;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "initial":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/css/FontCssMetaData;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 1528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/CssStyleHelper$1;->getStyleableProperty(Ljavafx/scene/Node;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper$1;
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
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$1;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper$1;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 1528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/CssStyleHelper$1;->isSettable(Ljavafx/scene/Node;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper$1;
    return v0
.end method

.method public isSettable(Ljavafx/scene/Node;)Z
    .locals 3

    .prologue
    .line 1532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$1;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper$1;
    return v0
.end method
