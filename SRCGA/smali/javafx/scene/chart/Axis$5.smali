.class Ljavafx/scene/chart/Axis$5;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;D)V
    .locals 8

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LENGTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$1100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    const-string v1, "tickLength"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/Axis$5;, "Ljavafx/scene/chart/Axis$5;"
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1000(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1000(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v2}, Ljavafx/scene/chart/Axis;->access$1000(Ljavafx/scene/chart/Axis;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 238
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/Axis$5;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 239
    return-void
.end method
