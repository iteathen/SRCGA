.class final Ljavafx/scene/control/Tooltip$7;
.super Ljavafx/css/CssMetaData;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<",
        "Ljavafx/scene/control/Tooltip$CSSBridge;",
        "Ljavafx/scene/control/OverrunStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/control/OverrunStyle;)V
    .locals 8

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$7;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/scene/control/OverrunStyle;>;"
    move-object v3, p3

    .local v3, "x2":Ljavafx/scene/control/OverrunStyle;
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
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Tooltip$CSSBridge;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Tooltip$7;->getStyleableProperty(Ljavafx/scene/control/Tooltip$CSSBridge;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$7;
    return-object v0
.end method

.method public getStyleableProperty(Ljavafx/scene/control/Tooltip$CSSBridge;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$7;
    move-object v1, p1

    .local v1, "cssBridge":Ljavafx/scene/control/Tooltip$CSSBridge;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/control/Tooltip$CSSBridge;->access$900(Ljavafx/scene/control/Tooltip$CSSBridge;)Ljavafx/scene/control/Tooltip;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$7;
    return-object v0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Tooltip$CSSBridge;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Tooltip$7;->isSettable(Ljavafx/scene/control/Tooltip$CSSBridge;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$7;
    return v0
.end method

.method public isSettable(Ljavafx/scene/control/Tooltip$CSSBridge;)Z
    .locals 3

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$7;
    move-object v1, p1

    .local v1, "cssBridge":Ljavafx/scene/control/Tooltip$CSSBridge;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/control/Tooltip$CSSBridge;->access$900(Ljavafx/scene/control/Tooltip$CSSBridge;)Ljavafx/scene/control/Tooltip;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$7;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Tooltip$7;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
