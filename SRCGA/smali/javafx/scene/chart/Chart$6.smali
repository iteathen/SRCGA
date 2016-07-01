.class Ljavafx/scene/chart/Chart$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Chart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Chart;Ljavafx/geometry/Side;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Chart;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Side;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Chart$6;->this$0:Ljavafx/scene/chart/Chart;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$6;->this$0:Ljavafx/scene/chart/Chart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$6;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Chart;",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$6;
    # getter for: Ljavafx/scene/chart/Chart$StyleableProperties;->LEGEND_SIDE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Chart$StyleableProperties;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$6;
    const-string v1, "legendSide"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$6;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/Chart$6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/geometry/Side;

    move-object v1, v3

    .line 221
    .local v1, "legendSide":Ljavafx/geometry/Side;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Chart$6;->this$0:Ljavafx/scene/chart/Chart;

    invoke-virtual {v3}, Ljavafx/scene/chart/Chart;->getLegend()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 222
    .local v2, "legend":Ljavafx/scene/Node;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/javafx/charts/Legend;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/sun/javafx/charts/Legend;

    sget-object v4, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/javafx/charts/Legend;->setVertical(Z)V

    .line 223
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Chart$6;->this$0:Ljavafx/scene/chart/Chart;

    invoke-virtual {v3}, Ljavafx/scene/chart/Chart;->requestLayout()V

    .line 224
    return-void

    .line 222
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
