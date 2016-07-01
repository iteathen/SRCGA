.class final Ljavafx/scene/layout/Region$StyleableProperties$4;
.super Ljavafx/css/CssMetaData;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/layout/Region;",
        "Ljavafx/scene/layout/Border;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/layout/Border;ZLjava/util/List;)V
    .locals 12

    .prologue
    .line 3209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/scene/layout/Border;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/layout/Border;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object/from16 v5, p5

    .local v5, "subProperties":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 3209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/Region;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region$StyleableProperties$4;->getStyleableProperty(Ljavafx/scene/layout/Region;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/layout/Region;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/layout/Region;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/layout/Border;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/layout/Region;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$4000(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 3209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/Region;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region$StyleableProperties$4;->isSettable(Ljavafx/scene/layout/Region;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    return v0
.end method

.method public isSettable(Ljavafx/scene/layout/Region;)Z
    .locals 3

    .prologue
    .line 3212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/layout/Region;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$4000(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region$StyleableProperties$4;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
