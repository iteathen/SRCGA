.class final Ljavafx/scene/Node$StyleableProperties$2;
.super Ljavafx/css/CssMetaData;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/Node;",
        "Ljavafx/scene/effect/Effect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V
    .locals 6

    .prologue
    .line 8503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$2;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/scene/effect/Effect;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 8503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node$StyleableProperties$2;->getStyleableProperty(Ljavafx/scene/Node;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$2;
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
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$2;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->effectProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$2;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 8503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node$StyleableProperties$2;->isSettable(Ljavafx/scene/Node;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$2;
    return v0
.end method

.method public isSettable(Ljavafx/scene/Node;)Z
    .locals 3

    .prologue
    .line 8507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$StyleableProperties$2;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/Node;->access$5000(Ljavafx/scene/Node;)Ljavafx/scene/Node$MiscProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/Node;->access$5000(Ljavafx/scene/Node;)Ljavafx/scene/Node$MiscProperties;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Node$MiscProperties;->canSetEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$StyleableProperties$2;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$StyleableProperties$2;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
