.class final Ljavafx/scene/layout/TilePane$StyleableProperties$9;
.super Ljavafx/css/CssMetaData;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/TilePane$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/layout/TilePane;",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljava/lang/Number;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Number;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/TilePane;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/TilePane$StyleableProperties$9;->getStyleableProperty(Ljavafx/scene/layout/TilePane;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/layout/TilePane;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/layout/TilePane;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/TilePane;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/TilePane$StyleableProperties$9;->isSettable(Ljavafx/scene/layout/TilePane;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    return v0
.end method

.method public isSettable(Ljavafx/scene/layout/TilePane;)Z
    .locals 3

    .prologue
    .line 1140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/layout/TilePane;->access$1900(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1141
    invoke-static {v2}, Ljavafx/scene/layout/TilePane;->access$1900(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane$StyleableProperties$9;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
