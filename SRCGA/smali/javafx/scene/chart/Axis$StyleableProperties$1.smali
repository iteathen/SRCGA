.class final Ljavafx/scene/chart/Axis$StyleableProperties$1;
.super Ljavafx/css/CssMetaData;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis$StyleableProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/chart/Axis",
        "<*>;",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V
    .locals 6

    .prologue
    .line 1107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/geometry/Side;>;"
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
    .line 1107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/chart/Axis;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/Axis$StyleableProperties$1;->getStyleableProperty(Ljavafx/scene/chart/Axis;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/chart/Axis;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<*>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->sideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 1107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/chart/Axis;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/Axis$StyleableProperties$1;->isSettable(Ljavafx/scene/chart/Axis;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    return v0
.end method

.method public isSettable(Ljavafx/scene/chart/Axis;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<*>;"
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1500(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1500(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$1;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
