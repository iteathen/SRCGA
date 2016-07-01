.class final Ljavafx/scene/shape/Shape$StyleableProperties$7;
.super Ljavafx/css/CssMetaData;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Shape$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/shape/Shape;",
        "Ljavafx/scene/shape/StrokeLineJoin;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/shape/StrokeLineJoin;)V
    .locals 8

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/scene/shape/StrokeLineJoin;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/shape/StrokeLineJoin;
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
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/shape/Shape;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape$StyleableProperties$7;->getStyleableProperty(Ljavafx/scene/shape/Shape;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/shape/Shape;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/Shape;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/shape/Shape;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->strokeLineJoinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/shape/Shape;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape$StyleableProperties$7;->isSettable(Ljavafx/scene/shape/Shape;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    return v0
.end method

.method public isSettable(Ljavafx/scene/shape/Shape;)Z
    .locals 3

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/shape/Shape;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$1100(Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 742
    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$1100(Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->canSetLineJoin()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StyleableProperties$7;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
