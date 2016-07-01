.class final Ljavafx/scene/chart/Axis$StyleableProperties$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljava/lang/Boolean;>;"
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Boolean;
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
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/chart/Axis;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/Axis$StyleableProperties$6;->getStyleableProperty(Ljavafx/scene/chart/Axis;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<*>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->tickMarkVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/chart/Axis;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/Axis$StyleableProperties$6;->isSettable(Ljavafx/scene/chart/Axis;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
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
    .line 1189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<*>;"
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1900(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1900(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/Axis$StyleableProperties$6;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
